#!/usr/bin/env python
import msgflo

class InvertBoolean(msgflo.Participant):
  def __init__(self, role):
    d = {
      'component': 'msgflo-project/InvertBoolean',
      'label': 'Invert a boolean value',
      'icon': 'star-o',
      'inports': [
        { 'id': 'in', 'type': 'boolean' },
      ],
      'outports': [
        { 'id': 'out', 'type': 'boolean' },
      ],
    }
    msgflo.Participant.__init__(self, d, role)

  def process(self, inport, msg):
    if msg.data:
      self.send('out', False)
    else:
      self.send('out', True)
    self.ack(msg)

if __name__ == '__main__':
  msgflo.main(InvertBoolean)
