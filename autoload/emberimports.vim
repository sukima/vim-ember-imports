" Vim plugin for managing Ember.js import statements
" Maintainer: Devin Weaver <suki@tritarget.org>
" Last Change: 2018 Apr 22

" Ember Definitions {{{1
let g:vim_ember_import_definitions = {
      \   'Ember': {'default': v:true, 'from': 'ember'},
      \   'Application': {'default': v:true, 'from': '@ember/application'},
      \   'ApplicationInstance': {'default': v:true, 'from': '@ember/application/instance'},
      \   'GlobalsResolver': {'default': v:true, 'from': '@ember/application/globals-resolver'},
      \   'getOwner': {'default': v:false, 'from': '@ember/application'},
      \   'setOwner': {'default': v:false, 'from': '@ember/application'},
      \   'deprecate': {'default': v:false, 'from': '@ember/application/deprecations'},
      \   'ArrayProxy': {'default': v:true, 'from': '@ember/array/proxy'},
      \   'EmberArray': {'default': v:true, 'from': '@ember/array'},
      \   'MutableArray': {'default': v:true, 'from': '@ember/array/mutable'},
      \   'A': {'default': v:false, 'from': '@ember/array'},
      \   'isArray': {'default': v:false, 'from': '@ember/array'},
      \   'Component': {'default': v:true, 'from': '@ember/component'},
      \   'Checkbox': {'default': v:true, 'from': '@ember/component/checkbox'},
      \   'Helper': {'default': v:true, 'from': '@ember/component/helper'},
      \   'TextArea': {'default': v:true, 'from': '@ember/component/text-area'},
      \   'TextField': {'default': v:true, 'from': '@ember/component/text-field'},
      \   'helper': {'default': v:false, 'from': '@ember/component/helper'},
      \   'Controller': {'default': v:true, 'from': '@ember/controller'},
      \   'controller': {'default': v:false, 'from': '@ember/controller', 'aliased': 'inject'},
      \   'ContainerDebugAdapter': {'default': v:true, 'from': '@ember/debug/container-debug-adapter'},
      \   'DataAdapter': {'default': v:true, 'from': '@ember/debug/data-adapter'},
      \   'assert': {'default': v:false, 'from': '@ember/debug'},
      \   'debug': {'default': v:false, 'from': '@ember/debug'},
      \   'registerDeprecationHandler': {'default': v:false, 'from': '@ember/debug'},
      \   'registerWarnHandler': {'default': v:false, 'from': '@ember/debug'},
      \   'runInDebug': {'default': v:false, 'from': '@ember/debug'},
      \   'warn': {'default': v:false, 'from': '@ember/debug'},
      \   'Engine': {'default': v:true, 'from': '@ember/engine'},
      \   'EngineInstance': {'default': v:true, 'from': '@ember/engine/instance'},
      \   'EmberError': {'default': v:true, 'from': '@ember/error'},
      \   'ComputedProperty': {'default': v:true, 'from': '@ember/object/computed'},
      \   'CoreObject': {'default': v:true, 'from': '@ember/object/core'},
      \   'EmberObject': {'default': v:true, 'from': '@ember/object'},
      \   'Evented': {'default': v:true, 'from': '@ember/object/evented'},
      \   'Mixin': {'default': v:true, 'from': '@ember/object/mixin'},
      \   'ObjectProxy': {'default': v:true, 'from': '@ember/object/proxy'},
      \   'Observable': {'default': v:true, 'from': '@ember/object/observable'},
      \   'PromiseProxyMixin': {'default': v:true, 'from': '@ember/object/promise-proxy-mixin'},
      \   'aliasMethod': {'default': v:false, 'from': '@ember/object'},
      \   'computed': {'default': v:false, 'from': '@ember/object'},
      \   'expandProperties': {'default': v:false, 'from': '@ember/object/computed'},
      \   'get': {'default': v:false, 'from': '@ember/object'},
      \   'getProperties': {'default': v:false, 'from': '@ember/object'},
      \   'getWithDefault': {'default': v:false, 'from': '@ember/object'},
      \   'observer': {'default': v:false, 'from': '@ember/object'},
      \   'set': {'default': v:false, 'from': '@ember/object'},
      \   'setProperties': {'default': v:false, 'from': '@ember/object'},
      \   'trySet': {'default': v:false, 'from': '@ember/object'},
      \   'alias': {'default': v:false, 'from': '@ember/object/computed'},
      \   'and': {'default': v:false, 'from': '@ember/object/computed'},
      \   'bool': {'default': v:false, 'from': '@ember/object/computed'},
      \   'collect': {'default': v:false, 'from': '@ember/object/computed'},
      \   'deprecatingAlias': {'default': v:false, 'from': '@ember/object/computed'},
      \   'empty': {'default': v:false, 'from': '@ember/object/computed'},
      \   'equal': {'default': v:false, 'from': '@ember/object/computed'},
      \   'filter': {'default': v:false, 'from': '@ember/object/computed'},
      \   'filterBy': {'default': v:false, 'from': '@ember/object/computed'},
      \   'gt': {'default': v:false, 'from': '@ember/object/computed'},
      \   'gte': {'default': v:false, 'from': '@ember/object/computed'},
      \   'intersect': {'default': v:false, 'from': '@ember/object/computed'},
      \   'lt': {'default': v:false, 'from': '@ember/object/computed'},
      \   'lte': {'default': v:false, 'from': '@ember/object/computed'},
      \   'map': {'default': v:false, 'from': '@ember/object/computed'},
      \   'mapBy': {'default': v:false, 'from': '@ember/object/computed'},
      \   'match': {'default': v:false, 'from': '@ember/object/computed'},
      \   'max': {'default': v:false, 'from': '@ember/object/computed'},
      \   'min': {'default': v:false, 'from': '@ember/object/computed'},
      \   'none': {'default': v:false, 'from': '@ember/object/computed'},
      \   'not': {'default': v:false, 'from': '@ember/object/computed'},
      \   'notEmpty': {'default': v:false, 'from': '@ember/object/computed'},
      \   'oneWay': {'default': v:false, 'from': '@ember/object/computed'},
      \   'or': {'default': v:false, 'from': '@ember/object/computed'},
      \   'readOnly': {'default': v:false, 'from': '@ember/object/computed'},
      \   'reads': {'default': v:false, 'from': '@ember/object/computed'},
      \   'setDiff': {'default': v:false, 'from': '@ember/object/computed'},
      \   'sort': {'default': v:false, 'from': '@ember/object/computed'},
      \   'sum': {'default': v:false, 'from': '@ember/object/computed'},
      \   'union': {'default': v:false, 'from': '@ember/object/computed'},
      \   'uniq': {'default': v:false, 'from': '@ember/object/computed'},
      \   'uniqBy': {'default': v:false, 'from': '@ember/object/computed'},
      \   'on': {'default': v:false, 'from': '@ember/object/evented'},
      \   'addListener': {'default': v:false, 'from': '@ember/object/events'},
      \   'removeListener': {'default': v:false, 'from': '@ember/object/events'},
      \   'sendEvent': {'default': v:false, 'from': '@ember/object/events'},
      \   'cacheFor': {'default': v:false, 'from': '@ember/object/internals'},
      \   'copy': {'default': v:false, 'from': '@ember/object/internals'},
      \   'guidFor': {'default': v:false, 'from': '@ember/object/internals'},
      \   'addObserver': {'default': v:false, 'from': '@ember/object/observers'},
      \   'removeObserver': {'default': v:false, 'from': '@ember/object/observers'},
      \   'assign': {'default': v:false, 'from': '@ember/polyfills'},
      \   'merge': {'default': v:false, 'from': '@ember/polyfills'},
      \   'EmberRouter': {'default': v:true, 'from': '@ember/routing/router'},
      \   'HashLocation': {'default': v:true, 'from': '@ember/routing/hash-location'},
      \   'HistoryLocation': {'default': v:true, 'from': '@ember/routing/history-location'},
      \   'LinkComponent': {'default': v:true, 'from': '@ember/routing/link-component'},
      \   'NoneLocation': {'default': v:true, 'from': '@ember/routing/none-location'},
      \   'Route': {'default': v:true, 'from': '@ember/routing/route'},
      \   'begin': {'default': v:false, 'from': '@ember/runloop'},
      \   'bind': {'default': v:false, 'from': '@ember/runloop'},
      \   'cancel': {'default': v:false, 'from': '@ember/runloop'},
      \   'debounce': {'default': v:false, 'from': '@ember/runloop'},
      \   'end': {'default': v:false, 'from': '@ember/runloop'},
      \   'join': {'default': v:false, 'from': '@ember/runloop'},
      \   'later': {'default': v:false, 'from': '@ember/runloop'},
      \   'next': {'default': v:false, 'from': '@ember/runloop'},
      \   'once': {'default': v:false, 'from': '@ember/runloop'},
      \   'run': {'default': v:false, 'from': '@ember/runloop'},
      \   'schedule': {'default': v:false, 'from': '@ember/runloop'},
      \   'scheduleOnce': {'default': v:false, 'from': '@ember/runloop'},
      \   'throttle': {'default': v:false, 'from': '@ember/runloop'},
      \   'Service': {'default': v:true, 'from': '@ember/service'},
      \   'service': {'default': v:false, 'from': '@ember/service', 'aliased': 'inject'},
      \   'camelize': {'default': v:false, 'from': '@ember/string'},
      \   'capitalize': {'default': v:false, 'from': '@ember/string'},
      \   'classify': {'default': v:false, 'from': '@ember/string'},
      \   'dasherize': {'default': v:false, 'from': '@ember/string'},
      \   'decamelize': {'default': v:false, 'from': '@ember/string'},
      \   'loc': {'default': v:false, 'from': '@ember/string'},
      \   'underscore': {'default': v:false, 'from': '@ember/string'},
      \   'w': {'default': v:false, 'from': '@ember/string'},
      \   'TestAdapter': {'default': v:true, 'from': '@ember/test/adapter'},
      \   'checkWaiters': {'default': v:false, 'from': '@ember/test'},
      \   'registerHelper': {'default': v:false, 'from': '@ember/test'},
      \   'registerWaiter': {'default': v:false, 'from': '@ember/test'},
      \   'unregisterHelper': {'default': v:false, 'from': '@ember/test'},
      \   'unregisterWaiter': {'default': v:false, 'from': '@ember/test'},
      \   'compare': {'default': v:false, 'from': '@ember/utils'},
      \   'isBlank': {'default': v:false, 'from': '@ember/utils'},
      \   'isEmpty': {'default': v:false, 'from': '@ember/utils'},
      \   'isEqual': {'default': v:false, 'from': '@ember/utils'},
      \   'isNone': {'default': v:false, 'from': '@ember/utils'},
      \   'isPresent': {'default': v:false, 'from': '@ember/utils'},
      \   'tryInvoke': {'default': v:false, 'from': '@ember/utils'},
      \   'typeOf': {'default': v:false, 'from': '@ember/utils'},
      \   '$': {'default': v:true, 'from': 'jquery'},
      \   'RSVP': {'default': v:true, 'from': 'rsvp'},
      \   'all': {'default': v:false, 'from': 'rsvp'},
      \   'allSettled': {'default': v:false, 'from': 'rsvp'},
      \   'defer': {'default': v:false, 'from': 'rsvp'},
      \   'denodeify': {'default': v:false, 'from': 'rsvp'},
      \   'rsvpFilter': {'default': v:false, 'from': 'rsvp', 'aliased': 'filter'},
      \   'hash': {'default': v:false, 'from': 'rsvp'},
      \   'hashSettled': {'default': v:false, 'from': 'rsvp'},
      \   'rsvpMap': {'default': v:false, 'from': 'rsvp', 'aliased': 'map'},
      \   'race': {'default': v:false, 'from': 'rsvp'},
      \   'reject': {'default': v:false, 'from': 'rsvp'},
      \   'resolve': {'default': v:false, 'from': 'rsvp'},
      \   'rethrow': {'default': v:false, 'from': 'rsvp'},
      \   'Promise': {'default': v:false, 'from': 'rsvp'},
      \   'module': {'default': v:false, 'from': 'qunit'},
      \   'test': {'default': v:false, 'from': 'qunit'},
      \   'skip': {'default': v:false, 'from': 'qunit'},
      \   'start': {'default': v:false, 'from': 'ember-qunit'},
      \   'setupTest': {'default': v:false, 'from': 'ember-qunit'},
      \   'setupRenderingTest': {'default': v:false, 'from': 'ember-qunit'},
      \   'setupApplicationTest': {'default': v:false, 'from': 'ember-qunit'},
      \   'setupApplication': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'click': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'tap': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'focus': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'blur': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'triggerEvent': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'triggerKeyEvent': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'fillIn': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'find': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'findAll': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'getRootElement': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'visit': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'currentRouteName': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'currentURL': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'render': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'clearRender': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'waitFor': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'waitUntil': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'settled': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'isSettled': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'getSettledState': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'pauseTest': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'resumeTest': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'setResolver': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'getResolver': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'setupContext': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'getContext': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'setContext': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'unsetContext': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'teardownContext': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'setupRenderingContext': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'teardownRenderingContext': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'getApplication': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'setApplication': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'setupApplicationContext': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'teardownApplicationContext': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'validateErrorHandler': {'default': v:false, 'from': '@ember/test-helpers'},
      \   'task': {'default': v:false, 'from': 'ember-concurrency'},
      \   'timeout': {'default': v:false, 'from': 'ember-concurrency'},
      \   'didCancel': {'default': v:false, 'from': 'ember-concurrency'},
      \   'waitForEvent': {'default': v:false, 'from': 'ember-concurrency'},
      \   'waitForProperty': {'default': v:false, 'from': 'ember-concurrency'},
      \   'waitForQueue': {'default': v:false, 'from': 'ember-concurrency'},
      \   'Model': {'default': v:true, 'from': 'ember-data/model'},
      \   'Adapter': {'default': v:true, 'from': 'ember-data/adapter'},
      \   'RESTAdapter': {'default': v:true, 'from': 'ember-data/adapters/rest'},
      \   'JSONAPIAdapter': {'default': v:true, 'from': 'ember-data/adapters/json-api'},
      \   'JSONSerializer': {'default': v:true, 'from': 'ember-data/serializers/json'},
      \   'RESTSerializer': {'default': v:true, 'from': 'ember-data/serializers/rest'},
      \   'JSONAPISerializer': {'default': v:true, 'from': 'ember-data/serializers/json-api'},
      \   'Store': {'default': v:true, 'from': 'ember-data/model'},
      \   'Transform': {'default': v:true, 'from': 'ember-data/model'},
      \   'attr': {'default': v:true, 'from': 'ember-data/model'},
      \   'hasMany': {'default': v:false, 'from': 'ember-data/relationships'},
      \   'belongsTo': {'default': v:false, 'from': 'ember-data/relationships'},
      \ }

" ParseImportAST {{{1
function! s:ParseImportAST(inputLine)
  let line = a:inputLine
  let line = substitute(line, '\v\{', 'OpenBracket', '')
  let line = substitute(line, '\v\}', 'CloseBracket', '')
  let ast = []
  let isAlias = v:false
  let isDefault = v:true
  let foundImport = v:false
  let foundDefault = v:false
  for token in split(line, '\v[[:space:][:punct:]]+')
    if token ==# 'import'
      if foundImport
        throw 'Redundent import statement'
      endif
      let isDefault = v:true
      let foundImport = v:true
      continue
    endif
    if foundImport == v:false
      throw 'Missing import statement'
    endif
    if token ==# 'OpenBracket'
      if isAlias
        throw 'Missing alias statement argument'
      endif
      let isDefault = v:false
      continue
    endif
    if token ==# 'CloseBracket'
      if isAlias
        throw 'Missing alias statement argument'
      endif
      if isDefault
        throw 'Closing bracket found without an opening bracket'
      endif
      let isDefault = v:true
      continue
    endif
    if token ==# 'as'
      if isAlias
        throw 'Redundent alias statement'
      endif
      let isAlias = v:true
      continue
    endif
    if token ==# 'from'
      if isAlias
        throw 'Missing alias statement argument'
      endif
      break
    endif
    if isAlias
      let ast[-1].alias = token
      let isAlias = v:false
    else
      if isDefault && foundDefault
        throw 'Redundent default import for ' . token
      endif
      if isDefault
        let foundDefault = v:true
      endif
      let ast = ast + [{'name': token, 'default': isDefault, 'alias': v:null}]
    endif
  endfor
  return ast
endfunction

" IndentChars {{{1
function! s:IndentChars(num)
  let identStr = &expandtab ? repeat(' ', shiftwidth()) : '\t'
  return repeat(identStr, a:num)
endfunction

" RenderImport {{{1
function! s:RenderImport(ast, from)
  let defaultPart = v:null
  let destructureParts = []
  for token in a:ast
    let part = token.name
    if !empty(token.alias)
      let part = part . ' as ' . token.alias
    endif
    if token.default
      let defaultPart = part
    else
      let destructureParts = destructureParts + [part]
    endif
  endfor
  let parts = ['import']
  if !empty(defaultPart)
    let part = defaultPart
    if !empty(destructureParts)
      let part = part . ','
    endif
    let parts = parts + [part]
  endif
  if !empty(destructureParts)
    let destructureParts = map(sort(uniq(destructureParts)), 'v:val . ","')
    let destructureParts[-1] = substitute(destructureParts[-1], '\v,$', '', '')
    let parts = parts + ['{'] + destructureParts + ['}']
  endif
  let semicolon = g:vim_ember_imports_use_semicolons ? ';' : ''
  let parts = parts + ['from', "'" . a:from . "'" . semicolon]
  let importLine = join(parts, ' ')
  let wrapParts = g:vim_ember_imports_multiline_max_vars > 0 &&
        \ len(destructureParts) > g:vim_ember_imports_multiline_max_vars
  let wrapLine = g:vim_ember_imports_multiline_max_col > 0 &&
        \ strchars(importLine) > g:vim_ember_imports_multiline_max_col
  if wrapParts
    let sep = s:IndentChars(1)
    let firstBracketIdx = index(parts, '{')
    let lastBracketIdx = index(parts, '}')
    let lines = [join(parts[0:firstBracketIdx], ' ')]
    for part in parts[firstBracketIdx+1:lastBracketIdx-1]
      let lines = lines + [sep . part]
    endfor
    let lines = lines + [join(parts[lastBracketIdx:], ' ')]
  elseif wrapLine
    let fromIdx = index(parts, 'from')
    let lines = [
          \ join(parts[0:fromIdx-1], ' '),
          \ s:IndentChars(1) . join(parts[fromIdx:])
          \ ]
  else
    let lines = [importLine]
  endif
  return lines
endfunction

" DefinitionForToken {{{1
function! s:DefinitionForToken(token)
  if !has_key(g:vim_ember_import_definitions, a:token)
    throw 'Unknown Ember keyword ' . a:token
  endif
  let info = g:vim_ember_import_definitions[a:token]
  if has_key(info, 'aliased') && !empty(info.aliased)
    return {'name': info.aliased, 'alias': a:token, 'default': info.default, 'from': info.from}
  else
    return {'name': a:token, 'alias': v:null, 'default': info.default, 'from': info.from}
  endif
endfunction

" AppendEmberImport {{{1
function! s:AppendEmberImport(pos, definition)
  let importStr = s:RenderImport([a:definition], a:definition.from)
  if a:pos == 0
    let importStr = importStr + ['']
  endif
  call append(a:pos, importStr)
  return len(importStr)
endfunction

" UpdateEmberImport {{{1
function! s:UpdateEmberImport(pos, lines, definition)
  let ast = s:ParseImportAST(a:lines) + [a:definition]
  let importStr = s:RenderImport(ast, a:definition.from)
  call append(a:pos, importStr)
  return len(importStr)
endfunction

" FindLastImport {{{1
function! s:FindLastImport()
  call cursor(line('$'), 0)
  let pos = search('\v^<import>', 'bcW')
  return pos > 0 ? search('\v<from>', 'cW') : 0
endfunction

" GetImportLines {{{1
function! s:GetImportLines()
  let start = line('.')
  let end = start
  let lines = getline(start)
  if lines !~# '\v^i<import>'
    let start = search('\v^<import>', 'bnW')
    let lines = join(getline(start, end))
  endif
  return {'start': start, 'end': end, 'lines': lines}
endfunction

" AddOrUpdateEmberImport {{{1
function! s:AddOrUpdateEmberImport(token)
  let prevpos = getcurpos()
  let definition = s:DefinitionForToken(a:token)
  let loc = search('\vfrom\s[''"]' . escape(definition.from, '_.-/@') . '[''"]', 'bcwz')
  if loc == 0
    let adjustment = s:AppendEmberImport(s:FindLastImport(), definition)
  else
    let importPos = s:GetImportLines()
    execute importPos.start . ',' . importPos.end . ' delete _'
    let adjustment = s:UpdateEmberImport(importPos.start - 1, importPos.lines, definition)
    let adjustment = adjustment - (importPos.end - importPos.start) - 1
  endif
  let curpos = getcurpos()
  let prevpos[1] = prevpos[1] + adjustment
  call setpos('.', prevpos)
  call setpos("''", curpos)
endfunction

" emberimports#run {{{1
function! emberimports#run(...)
  let tokens = empty(a:000) ? [expand('<cword>')] : a:000
  for token in tokens
    let adjustment = s:AddOrUpdateEmberImport(token)
  endfor

  if exists("*EmberImportSort")
    call EmberImportSort()
  endif
endfunction

" emberimports#complete {{{1
function! emberimports#complete(ArgLead, CmdLine, CursorPos)
  return filter(keys(g:vim_ember_import_definitions), "v:val =~# '^" . a:ArgLead . "'")
endfunction

" vim:sw=2 ts=2 et fdm=marker
