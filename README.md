# Fieldsets CRM Schema Plugin

A CRM data structure based on a basic MS Dynamics CRM. Entities themselves are broken into 3 major groups, associations, members.

- users - CRM system user. Can perform data queries.
- associations - a group for members, users, notes, tags, tasks, conversations, files and other associations
- members - association members. Can be owners of files, notes, conversations, tasks and associations.

- tags - categories or terms that can be assigned to any association, member, user, task, note, conversation, event or file.

- meetings - a single date driven data point that can be assigned to users, members and associations
- tasks - an activity assignment that can have start and end dates and be assigned to a different users, members and associations
- files - a file address that can be of any format and can be assigned to users, members and associations
- notes - a basic text note can be customized by setting a custom note type and can be assigned to users, members and associations
- conversations - records of user/member conversations. Conversations are of predefined types and formatting.
