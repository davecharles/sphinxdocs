# Appendix A

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque facilisis vel velit nec pulvinar.

```python
class SignalHandler:
    """Signal Handler.
    Signal handling as a context manager.  On entering the context any
    original signal handlers are saved and requested ones installed. If any
    installed signal fires within the context we set the `self.interrupted`
    flag, record the signal number that caused it to be set and call
    `self.release` to reinstate the original handlers.
    If we leave the context without any installed signal firing the handler
    we call `self.release` to reinstate the original handlers.
    In either case, once an installed signal is caught, no subsequent
    signals will fire the handler.
    '__exit__' always returns `None` ensuring that any exception raised
    within the context is propagated to the code invoking the context
    manager.
    """
    def __init__(self, signals=None):
        if signals is None:
            signals = [signal.SIGTERM, signal.SIGINT]
        self.signals = signals
        self.interrupted = False
        self.signal_number = None
        self.released = False
        self.original_handlers = {}

    def __enter__(self):
        self.original_handlers = {sig: signal.getsignal(sig) for sig in
                                  self.signals}

        def handler(signum, frame):
            # pylint: disable=missing-docstring, unused-argument
            self.release()
            self.interrupted = True
            self.signal_number = signum

        for sig in self.signals:
            signal.signal(sig, handler)
        return self

    def __exit__(self, *exc):
        self.release()

    def release(self):  # pylint: disable=missing-docstring
        if not self.released:
            for sig in self.signals:
                signal.signal(sig, self.original_handlers[sig])
            self.released = True
```

Pellentesque sit amet bibendum nibh, in pretium mi. Nunc laoreet cursus ornare. Vivamus scelerisque tristique nibh ac scelerisque. Duis quis odio vel felis dictum aliquam. Curabitur vestibulum tortor vitae egestas faucibus. Curabitur sed ante id lectus posuere maximus nec et augue. Ut sit amet mauris justo. Praesent vel dui lorem.

## Gobbledygook 

Mauris auctor porttitor vehicula. Nunc aliquam fermentum tellus, nec varius dolor imperdiet sed. Duis lacinia augue vitae elementum molestie. In eu neque vehicula, congue augue ut, efficitur ligula. Vivamus lectus orci, aliquam at nisi ac, imperdiet tristique ligula. Donec elit enim, gravida at ullamcorper quis, volutpat a quam. Duis dignissim cursus dolor, vitae convallis mi. Nam in dolor sem. Maecenas eget leo id ante luctus mattis quis sed erat. Etiam mauris nisl, dapibus quis hendrerit ac, vestibulum eu velit. Phasellus et est massa. Nunc efficitur neque nec ornare posuere. Nullam posuere enim id sagittis eleifend. Integer tellus erat, eleifend at ante id, pellentesque ultricies est. Sed pulvinar ante eu turpis tempor, in laoreet tortor volutpat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.

## Summary
Aenean sit amet tortor id nisl luctus feugiat. Proin vel libero orci. Mauris bibendum rutrum semper. Curabitur rhoncus finibus elit posuere eleifend. Aliquam sit amet sem ut quam elementum aliquet ac eget lectus. Integer nec lacus non nulla auctor lobortis. Aliquam at dui at orci fringilla varius ac ac mi. Duis pharetra malesuada suscipit. Proin dictum nunc ac nibh mollis posuere. Morbi sed lectus est. Nunc dictum maximus molestie. Maecenas sit amet volutpat nisi, a maximus dolor. Nulla vulputate nulla lectus, at gravida justo mattis vitae. Phasellus suscipit euismod purus, eu pharetra turpis fringilla tempus. Cras ut metus cursus, pellentesque ligula quis, posuere nibh. Ut aliquet, ante sed porttitor semper, sem ligula imperdiet ipsum, quis lobortis justo urna at ante.
