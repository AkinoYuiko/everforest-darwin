{ raw }: ''
  <?xml version="1.0" encoding="UTF-8"?>
  <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
  <plist version="1.0">
  <dict>
    <key>name</key>
    <string>everforest</string>
    <key>settings</key>
    <array>
      <dict>
        <key>settings</key>
        <dict>
          <key>caret</key>
          <string>${raw.fg}</string>
          <key>foreground</key>
          <string>${raw.fg}</string>
          <key>invisibles</key>
          <string>${raw.grey1}</string>
          <key>lineHighlight</key>
          <string>${raw.bg1}</string>
          <key>selection</key>
          <string>${raw.bg_visual}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Comments</string>
        <key>scope</key>
        <string>comment, punctuation.definition.comment</string>
        <key>settings</key>
        <dict><key>foreground</key><string>${raw.grey1}</string></dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Keywords</string>
        <key>scope</key>
        <string>keyword.control, keyword.declaration, keyword.other.special-method</string>
        <key>settings</key>
        <dict><key>foreground</key><string>${raw.red}</string></dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Operators and storage</string>
        <key>scope</key>
        <string>keyword.operator, keyword.other, storage</string>
        <key>settings</key>
        <dict><key>foreground</key><string>${raw.orange}</string></dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Types and modules</string>
        <key>scope</key>
        <string>entity.name.type, entity.name.class, entity.name.namespace, support.type, support.class</string>
        <key>settings</key>
        <dict><key>foreground</key><string>${raw.yellow}</string></dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Strings and functions</string>
        <key>scope</key>
        <string>string, entity.name.function, support.function, meta.function-call</string>
        <key>settings</key>
        <dict><key>foreground</key><string>${raw.green}</string></dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Constants and macros</string>
        <key>scope</key>
        <string>constant, entity.name.constant, entity.name.function.preprocessor, entity.name.function.macro</string>
        <key>settings</key>
        <dict><key>foreground</key><string>${raw.aqua}</string></dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Identifiers</string>
        <key>scope</key>
        <string>variable, variable.parameter, entity.name.variable, entity.other.attribute-name</string>
        <key>settings</key>
        <dict><key>foreground</key><string>${raw.blue}</string></dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Numbers and booleans</string>
        <key>scope</key>
        <string>constant.numeric, constant.language.boolean, constant.language.null, keyword.other.unit</string>
        <key>settings</key>
        <dict><key>foreground</key><string>${raw.purple}</string></dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Punctuation</string>
        <key>scope</key>
        <string>punctuation, meta.brace, meta.delimiter</string>
        <key>settings</key>
        <dict><key>foreground</key><string>${raw.grey1}</string></dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Markup headings</string>
        <key>scope</key>
        <string>markup.heading, entity.name.section, markup.list</string>
        <key>settings</key>
        <dict><key>foreground</key><string>${raw.orange}</string></dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Inserted</string>
        <key>scope</key>
        <string>markup.inserted, meta.diff.header.to-file</string>
        <key>settings</key>
        <dict><key>foreground</key><string>${raw.green}</string></dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Deleted</string>
        <key>scope</key>
        <string>markup.deleted, meta.diff.header.from-file</string>
        <key>settings</key>
        <dict><key>foreground</key><string>${raw.red}</string></dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Changed</string>
        <key>scope</key>
        <string>markup.changed, meta.diff.range</string>
        <key>settings</key>
        <dict><key>foreground</key><string>${raw.blue}</string></dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Invalid</string>
        <key>scope</key>
        <string>invalid, invalid.illegal</string>
        <key>settings</key>
        <dict><key>foreground</key><string>${raw.red}</string></dict>
      </dict>
    </array>
    <key>uuid</key>
    <string>5d47682a-44c8-4e84-b5b8-e5e2f0e57a11</string>
  </dict>
  </plist>
''
