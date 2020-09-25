.class Lo/prepareFromSearch$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/prepareFromSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private ICustomTabsCallback:Z

.field private ICustomTabsCallback$Stub:Z

.field private final extraCallback:Landroid/widget/TextView;

.field private onMessageChannelReady:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Landroid/view/ActionMode$Callback;

.field private onPostMessage:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V
    .locals 0

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput-object p1, p0, Lo/prepareFromSearch$ICustomTabsCallback;->onNavigationEvent:Landroid/view/ActionMode$Callback;

    .line 551
    iput-object p2, p0, Lo/prepareFromSearch$ICustomTabsCallback;->extraCallback:Landroid/widget/TextView;

    const/4 p1, 0x0

    .line 552
    iput-boolean p1, p0, Lo/prepareFromSearch$ICustomTabsCallback;->ICustomTabsCallback$Stub:Z

    return-void
.end method

.method private extraCallback()Landroid/content/Intent;
    .locals 2

    .line 671
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private extraCallback(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 631
    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_0

    return-object v0

    .line 636
    :cond_0
    invoke-direct {p0}, Lo/prepareFromSearch$ICustomTabsCallback;->extraCallback()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 637
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 638
    invoke-direct {p0, v1, p1}, Lo/prepareFromSearch$ICustomTabsCallback;->onNavigationEvent(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 639
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private onNavigationEvent(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z
    .locals 3

    .line 646
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 649
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ComponentInfo;->exported:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 652
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 653
    invoke-virtual {p2, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method private onPostMessage(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)Landroid/content/Intent;
    .locals 2

    .line 659
    invoke-direct {p0}, Lo/prepareFromSearch$ICustomTabsCallback;->extraCallback()Landroid/content/Intent;

    move-result-object v0

    .line 660
    invoke-direct {p0, p2}, Lo/prepareFromSearch$ICustomTabsCallback;->onPostMessage(Landroid/widget/TextView;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const-string v1, "android.intent.extra.PROCESS_TEXT_READONLY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 661
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private onPostMessage(Landroid/view/Menu;)V
    .locals 8

    .line 577
    iget-object v0, p0, Lo/prepareFromSearch$ICustomTabsCallback;->extraCallback:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 578
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 580
    iget-boolean v2, p0, Lo/prepareFromSearch$ICustomTabsCallback;->ICustomTabsCallback$Stub:Z

    const-string v3, "removeItemAt"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_0

    .line 581
    iput-boolean v5, p0, Lo/prepareFromSearch$ICustomTabsCallback;->ICustomTabsCallback$Stub:Z

    :try_start_0
    const-string v2, "com.android.internal.view.menu.MenuBuilder"

    .line 584
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lo/prepareFromSearch$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/Class;

    new-array v6, v5, [Ljava/lang/Class;

    .line 585
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    .line 586
    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lo/prepareFromSearch$ICustomTabsCallback;->onPostMessage:Ljava/lang/reflect/Method;

    .line 587
    iput-boolean v5, p0, Lo/prepareFromSearch$ICustomTabsCallback;->ICustomTabsCallback:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    .line 589
    iput-object v2, p0, Lo/prepareFromSearch$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/Class;

    .line 590
    iput-object v2, p0, Lo/prepareFromSearch$ICustomTabsCallback;->onPostMessage:Ljava/lang/reflect/Method;

    .line 591
    iput-boolean v4, p0, Lo/prepareFromSearch$ICustomTabsCallback;->ICustomTabsCallback:Z

    .line 597
    :cond_0
    :goto_0
    :try_start_1
    iget-boolean v2, p0, Lo/prepareFromSearch$ICustomTabsCallback;->ICustomTabsCallback:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lo/prepareFromSearch$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 598
    iget-object v2, p0, Lo/prepareFromSearch$ICustomTabsCallback;->onPostMessage:Ljava/lang/reflect/Method;

    goto :goto_1

    .line 599
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    .line 600
    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 601
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_2
    if-ltz v3, :cond_3

    .line 602
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 603
    invoke-interface {v6}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v7, "android.intent.action.PROCESS_TEXT"

    .line 604
    invoke-interface {v6}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-array v6, v5, [Ljava/lang/Object;

    .line 605
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v2, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 617
    :cond_3
    invoke-direct {p0, v0, v1}, Lo/prepareFromSearch$ICustomTabsCallback;->extraCallback(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    .line 618
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 619
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    add-int/lit8 v6, v2, 0x64

    .line 622
    invoke-virtual {v3, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 620
    invoke-interface {p1, v4, v4, v6, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v7, p0, Lo/prepareFromSearch$ICustomTabsCallback;->extraCallback:Landroid/widget/TextView;

    .line 623
    invoke-direct {p0, v3, v7}, Lo/prepareFromSearch$ICustomTabsCallback;->onPostMessage(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v3

    .line 624
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_1
    :cond_4
    return-void
.end method

.method private onPostMessage(Landroid/widget/TextView;)Z
    .locals 1

    .line 665
    instance-of v0, p1, Landroid/text/Editable;

    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {p1}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 568
    iget-object v0, p0, Lo/prepareFromSearch$ICustomTabsCallback;->onNavigationEvent:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 557
    iget-object v0, p0, Lo/prepareFromSearch$ICustomTabsCallback;->onNavigationEvent:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 573
    iget-object v0, p0, Lo/prepareFromSearch$ICustomTabsCallback;->onNavigationEvent:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 562
    invoke-direct {p0, p2}, Lo/prepareFromSearch$ICustomTabsCallback;->onPostMessage(Landroid/view/Menu;)V

    .line 563
    iget-object v0, p0, Lo/prepareFromSearch$ICustomTabsCallback;->onNavigationEvent:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
