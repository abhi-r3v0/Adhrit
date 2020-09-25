.class public final Lo/isSpanGroupIndexCacheEnabled$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isSpanGroupIndexCacheEnabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/adapter/InstrumentSelectorListAdapter$Companion;",
        "",
        "()V",
        "LIST_ITEM",
        "",
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
.field private ICustomTabsCallback:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private extraCallback:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/getAuthTimestamp;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/startActivityForLinkWithProvider;",
            ">;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/findReferenceChild$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field public onPostMessage:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/reauthenticate;",
            ">;"
        }
    .end annotation
.end field

.field private onTransact:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/unlink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/getMultiFactor;)V
    .locals 3

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/sendEmailVerification;

    invoke-direct {v0, p1}, Lo/sendEmailVerification;-><init>(Lo/getMultiFactor;)V

    iput-object v0, p0, Lo/isSpanGroupIndexCacheEnabled$onMessageChannelReady;->ICustomTabsCallback:Lo/notifyEventReceivers;

    new-instance p1, Lo/getClaims;

    invoke-direct {p1, v0}, Lo/getClaims;-><init>(Lo/notifyEventReceivers;)V

    .line 2000
    new-instance v0, Lo/setCrashlyticsOriginEventReceiver;

    invoke-direct {v0, p1}, Lo/setCrashlyticsOriginEventReceiver;-><init>(Lo/notifyEventReceivers;)V

    .line 1000
    iput-object v0, p0, Lo/isSpanGroupIndexCacheEnabled$onMessageChannelReady;->onNavigationEvent:Lo/notifyEventReceivers;

    iget-object p1, p0, Lo/isSpanGroupIndexCacheEnabled$onMessageChannelReady;->ICustomTabsCallback:Lo/notifyEventReceivers;

    new-instance v1, Lo/getCreationTimestamp;

    invoke-direct {v1, p1, v0}, Lo/getCreationTimestamp;-><init>(Lo/notifyEventReceivers;Lo/notifyEventReceivers;)V

    .line 3000
    new-instance p1, Lo/setCrashlyticsOriginEventReceiver;

    invoke-direct {p1, v1}, Lo/setCrashlyticsOriginEventReceiver;-><init>(Lo/notifyEventReceivers;)V

    .line 1000
    iput-object p1, p0, Lo/isSpanGroupIndexCacheEnabled$onMessageChannelReady;->extraCallback:Lo/notifyEventReceivers;

    iget-object p1, p0, Lo/isSpanGroupIndexCacheEnabled$onMessageChannelReady;->ICustomTabsCallback:Lo/notifyEventReceivers;

    new-instance v0, Lo/linkWithCredential;

    invoke-direct {v0, p1}, Lo/linkWithCredential;-><init>(Lo/notifyEventReceivers;)V

    .line 4000
    new-instance p1, Lo/setCrashlyticsOriginEventReceiver;

    invoke-direct {p1, v0}, Lo/setCrashlyticsOriginEventReceiver;-><init>(Lo/notifyEventReceivers;)V

    .line 1000
    iput-object p1, p0, Lo/isSpanGroupIndexCacheEnabled$onMessageChannelReady;->onMessageChannelReady:Lo/notifyEventReceivers;

    iget-object v0, p0, Lo/isSpanGroupIndexCacheEnabled$onMessageChannelReady;->extraCallback:Lo/notifyEventReceivers;

    iget-object v1, p0, Lo/isSpanGroupIndexCacheEnabled$onMessageChannelReady;->ICustomTabsCallback:Lo/notifyEventReceivers;

    new-instance v2, Lo/updateEmail;

    invoke-direct {v2, v0, p1, v1}, Lo/updateEmail;-><init>(Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;)V

    .line 5000
    new-instance p1, Lo/setCrashlyticsOriginEventReceiver;

    invoke-direct {p1, v2}, Lo/setCrashlyticsOriginEventReceiver;-><init>(Lo/notifyEventReceivers;)V

    .line 1000
    iput-object p1, p0, Lo/isSpanGroupIndexCacheEnabled$onMessageChannelReady;->onTransact:Lo/notifyEventReceivers;

    new-instance v0, Lo/verifyBeforeUpdateEmail;

    invoke-direct {v0, p1}, Lo/verifyBeforeUpdateEmail;-><init>(Lo/notifyEventReceivers;)V

    .line 6000
    new-instance p1, Lo/setCrashlyticsOriginEventReceiver;

    invoke-direct {p1, v0}, Lo/setCrashlyticsOriginEventReceiver;-><init>(Lo/notifyEventReceivers;)V

    .line 1000
    iput-object p1, p0, Lo/isSpanGroupIndexCacheEnabled$onMessageChannelReady;->onPostMessage:Lo/notifyEventReceivers;

    return-void
.end method
