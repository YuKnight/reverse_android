.class public Lcom/google/android/material/internal/ToolbarUtils;
.super Ljava/lang/Object;
.source "ToolbarUtils.java"


# static fields
.field private static final VIEW_TOP_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/google/android/material/internal/ToolbarUtils$1;

    invoke-direct {v0}, Lcom/google/android/material/internal/ToolbarUtils$1;-><init>()V

    sput-object v0, Lcom/google/android/material/internal/ToolbarUtils;->VIEW_TOP_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static getActionMenuItemView(Landroidx/appcompat/widget/Toolbar;I)Landroidx/appcompat/view/menu/ActionMenuItemView;
    .locals 5
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;
    .param p1, "menuItemId"    # I

    .line 151
    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    .line 152
    .local v0, "actionMenuView":Landroidx/appcompat/widget/ActionMenuView;
    if-eqz v0, :cond_1

    .line 153
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 154
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 155
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v3, :cond_0

    .line 156
    move-object v3, v2

    check-cast v3, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 157
    .local v3, "actionMenuItemView":Landroidx/appcompat/view/menu/ActionMenuItemView;
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 158
    return-object v3

    .line 153
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "actionMenuItemView":Landroidx/appcompat/view/menu/ActionMenuItemView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;
    .locals 3
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 121
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 122
    .local v1, "child":Landroid/view/View;
    instance-of v2, v1, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_0

    .line 123
    move-object v2, v1

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView;

    return-object v2

    .line 120
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getImageView(Landroidx/appcompat/widget/Toolbar;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;
    .locals 5
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;
    .param p1, "content"    # Landroid/graphics/drawable/Drawable;

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 94
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, "child":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 96
    move-object v2, v1

    check-cast v2, Landroid/widget/ImageView;

    .line 97
    .local v2, "imageView":Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    return-object v2

    .line 93
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "imageView":Landroid/widget/ImageView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLogoImageView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;

    .line 88
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/material/internal/ToolbarUtils;->getImageView(Landroidx/appcompat/widget/Toolbar;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public static getNavigationIconButton(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageButton;
    .locals 6
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;

    .line 131
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 132
    .local v0, "navigationIcon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 133
    return-object v1

    .line 135
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 136
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 137
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/ImageButton;

    if-eqz v4, :cond_1

    .line 138
    move-object v4, v3

    check-cast v4, Landroid/widget/ImageButton;

    .line 139
    .local v4, "imageButton":Landroid/widget/ImageButton;
    invoke-virtual {v4}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-ne v5, v0, :cond_1

    .line 140
    return-object v4

    .line 135
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "imageButton":Landroid/widget/ImageButton;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public static getSecondaryActionMenuItemView(Landroidx/appcompat/widget/Toolbar;)Landroid/view/View;
    .locals 3
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;

    .line 108
    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuView(Landroidx/appcompat/widget/Toolbar;)Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    .line 109
    .local v0, "actionMenuView":Landroidx/appcompat/widget/ActionMenuView;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 115
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getSubtitleTextView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/TextView;
    .locals 2
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;

    .line 68
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/material/internal/ToolbarUtils;->getTextViewsWithText(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 69
    .local v0, "textViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/TextView;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/material/internal/ToolbarUtils;->VIEW_TOP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    :goto_0
    return-object v1
.end method

.method private static getTextViewsWithText(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 5
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/widget/Toolbar;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, "textViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/TextView;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 75
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 76
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 77
    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    .line 78
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getTitleTextView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/TextView;
    .locals 2
    .param p0, "toolbar"    # Landroidx/appcompat/widget/Toolbar;

    .line 62
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/material/internal/ToolbarUtils;->getTextViewsWithText(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 63
    .local v0, "textViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/TextView;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/material/internal/ToolbarUtils;->VIEW_TOP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    :goto_0
    return-object v1
.end method