.class public Lcom/freshchat/consumer/sdk/b/f;
.super Ljava/lang/Object;


# direct methods
.method public static j(Landroid/content/Context;)Lo/onPostMessage;
    .locals 13

    const-string v0, "FRESHCHAT_WARNING"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "androidx.appcompat.widget.Toolbar"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_toolbar:I

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    sget v4, Lcom/freshchat/consumer/sdk/R$id;->freshchat_material_toolbar:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroidx/appcompat/widget/Toolbar;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    sget v4, Lcom/freshchat/consumer/sdk/R$id;->freshchat_material_toolbar:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/Toolbar;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    const/16 v8, 0x31

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    const/16 v3, 0x38

    invoke-static {p0, v3}, Lcom/freshchat/consumer/sdk/j/af;->h(Landroid/content/Context;I)I

    move-result v3

    add-int v10, v2, v3

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/view/View;IIII)V

    :cond_1
    if-eqz v4, :cond_3

    move-object v2, p0

    check-cast v2, Lo/asBinder;

    invoke-virtual {v2, v4}, Lo/asBinder;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "Toolbar Missing ! Did you uncomment the toolbar widget in layout/freshchat_toolbar.xml and remove the dummy view ?"

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_3
    :goto_1
    check-cast p0, Lo/asBinder;

    invoke-virtual {p0}, Lo/asBinder;->getSupportActionBar()Lo/onPostMessage;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const-string v2, "Failed to setup Toolbar based ActionBar"

    invoke-static {v0, v2, p0}, Lcom/freshchat/consumer/sdk/j/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
