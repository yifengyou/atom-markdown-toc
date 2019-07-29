TocView = require './toc-view'
{CompositeDisposable} = require 'atom'

module.exports = AtomMdtoc =

  activate: (state) ->
    this.subscriptions = new CompositeDisposable
    this.subscriptions.add atom.commands.add 'atom-workspace',
      'atom-markdown-toc:insert': => this.insert()
      'atom-markdown-toc:delete': => this.delete()

  serialize: ->

  deactivate: ->
    this.subscriptions.dispose()

  insert: ->
    tocview = new TocView(atom.workspace.getActivePaneItem())
    tocview.insert()

  delete: ->
    tocview = new TocView(atom.workspace.getActivePaneItem())
    tocview.delete()
