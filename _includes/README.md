# 🎨 Partial Templates

## 📝 [body.liquid](./body.liquid)

The main renderer that determines what type of resource to present.
Organization pages must have the ``github.is_organization_page = true`` 
configuration flag set. All other flags are set by ``github-metadata``

```html
<body>
    <!-- Application Toolbar -->
    <header/>
    
    <!-- Wiki side drawer for "Github Wiki Pages" -->
    <drawer/>
    
    <!-- FAB Button to "Edit on Github" -->
    <edit-button/>
    
    <!-- if site.github.is_organization_page -->
    <organization-page/>
    <!-- if site.github.is_user_page -->
    <user-page/>
    <!-- if site.github.is_project_page -->
    <project-page/>


    <!-- Application Footer -->
    <footer/>
</body>

```

## 
