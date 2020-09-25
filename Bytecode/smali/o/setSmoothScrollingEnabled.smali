.class public final Lo/setSmoothScrollingEnabled;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setSmoothScrollingEnabled$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u000c\u001a\u00020\rR\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u000b\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/dreamplug/contacthelper/db/DatabaseManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "db",
        "Lcom/dreamplug/contacthelper/db/Database;",
        "getDb",
        "()Lcom/dreamplug/contacthelper/db/Database;",
        "db$delegate",
        "Lkotlin/Lazy;",
        "mContext",
        "getDao",
        "Lcom/dreamplug/contacthelper/db/ContactDao;",
        "Companion",
        "contact_helper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/setSmoothScrollingEnabled$extraCallback;


# instance fields
.field private onMessageChannelReady:Landroid/content/Context;

.field public final onPostMessage:Lo/isSameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/setSmoothScrollingEnabled$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setSmoothScrollingEnabled$extraCallback;-><init>(B)V

    sput-object v0, Lo/setSmoothScrollingEnabled;->ICustomTabsCallback:Lo/setSmoothScrollingEnabled$extraCallback;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lo/setSmoothScrollingEnabled;->onMessageChannelReady:Landroid/content/Context;

    .line 13
    new-instance p1, Lo/setSmoothScrollingEnabled$onPostMessage;

    invoke-direct {p1, p0}, Lo/setSmoothScrollingEnabled$onPostMessage;-><init>(Lo/setSmoothScrollingEnabled;)V

    check-cast p1, Lo/getServerTime;

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 13
    iput-object v0, p0, Lo/setSmoothScrollingEnabled;->onPostMessage:Lo/isSameListener;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lo/setSmoothScrollingEnabled;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/setSmoothScrollingEnabled;)Landroid/content/Context;
    .locals 0

    .line 7
    iget-object p0, p0, Lo/setSmoothScrollingEnabled;->onMessageChannelReady:Landroid/content/Context;

    return-object p0
.end method
