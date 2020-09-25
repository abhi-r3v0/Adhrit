.class public final Lo/ensureContentInsets$onPostMessage;
.super Lo/ensureContentInsets;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ensureContentInsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001BA\u0012\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cJ/\u0010\u0011\u001a\u00020\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0002\u0010\u0019R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0002\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/ViewModelAction$LaunchActivity;",
        "Lcom/dreamplug/androidapp/ui/ViewModelAction;",
        "cls",
        "Ljava/lang/Class;",
        "extra",
        "Landroid/os/Bundle;",
        "clearStack",
        "",
        "delay",
        "",
        "intent",
        "Landroid/content/Intent;",
        "(Ljava/lang/Class;Landroid/os/Bundle;ZJLandroid/content/Intent;)V",
        "getCls",
        "()Ljava/lang/Class;",
        "getIntent",
        "()Landroid/content/Intent;",
        "launch",
        "",
        "activity",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "requestCode",
        "",
        "(Landroidx/appcompat/app/AppCompatActivity;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;)V",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:J

.field private final extraCallback:Z

.field private final onMessageChannelReady:Landroid/content/Intent;

.field final onNavigationEvent:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final onPostMessage:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lo/ensureContentInsets$onPostMessage;-><init>(Ljava/lang/Class;Landroid/os/Bundle;ZJLandroid/content/Intent;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Landroid/os/Bundle;ZJLandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "ZJ",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lo/ensureContentInsets;-><init>(B)V

    iput-object p1, p0, Lo/ensureContentInsets$onPostMessage;->onNavigationEvent:Ljava/lang/Class;

    iput-object p2, p0, Lo/ensureContentInsets$onPostMessage;->onPostMessage:Landroid/os/Bundle;

    iput-boolean p3, p0, Lo/ensureContentInsets$onPostMessage;->extraCallback:Z

    iput-wide p4, p0, Lo/ensureContentInsets$onPostMessage;->ICustomTabsCallback:J

    iput-object p6, p0, Lo/ensureContentInsets$onPostMessage;->onMessageChannelReady:Landroid/content/Intent;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;Landroid/os/Bundle;ZJLandroid/content/Intent;I)V
    .locals 6

    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    const/4 p3, 0x0

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    move v3, p3

    :goto_2
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    const-wide/16 p4, 0x0

    :cond_3
    move-wide v4, p4

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    move-object p7, v1

    goto :goto_3

    :cond_4
    move-object p7, p6

    :goto_3
    move-object p1, p0

    move-object p2, v0

    move-object p3, v2

    move p4, v3

    move-wide p5, v4

    .line 42
    invoke-direct/range {p1 .. p7}, Lo/ensureContentInsets$onPostMessage;-><init>(Ljava/lang/Class;Landroid/os/Bundle;ZJLandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/asBinder;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;)V
    .locals 7

    if-eqz p1, :cond_4

    .line 46
    move-object p2, p1

    check-cast p2, Landroid/content/Context;

    .line 50
    iget-object p3, p0, Lo/ensureContentInsets$onPostMessage;->onMessageChannelReady:Landroid/content/Intent;

    if-nez p3, :cond_0

    new-instance p3, Landroid/content/Intent;

    iget-object v0, p0, Lo/ensureContentInsets$onPostMessage;->onNavigationEvent:Ljava/lang/Class;

    invoke-direct {p3, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    move-object v5, p3

    .line 51
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 52
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const-string v0, "package"

    invoke-static {v0, p2, p3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 53
    invoke-virtual {v5, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 55
    :cond_1
    iget-object p2, p0, Lo/ensureContentInsets$onPostMessage;->onPostMessage:Landroid/os/Bundle;

    if-eqz p2, :cond_2

    .line 56
    invoke-virtual {v5, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 59
    :cond_2
    iget-boolean p2, p0, Lo/ensureContentInsets$onPostMessage;->extraCallback:Z

    if-eqz p2, :cond_3

    const p2, 0x10008000

    .line 60
    invoke-virtual {v5, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    :cond_3
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance p3, Lo/ensureContentInsets$onPostMessage$onMessageChannelReady;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lo/ensureContentInsets$onPostMessage$onMessageChannelReady;-><init>(Lo/ensureContentInsets$onPostMessage;Lo/asBinder;Ljava/lang/Integer;Landroid/content/Intent;Landroidx/fragment/app/Fragment;)V

    check-cast p3, Ljava/lang/Runnable;

    .line 81
    iget-wide v0, p0, Lo/ensureContentInsets$onPostMessage;->ICustomTabsCallback:J

    .line 63
    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 47
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "LaunchActivity launch() needs a fragment or activity."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
