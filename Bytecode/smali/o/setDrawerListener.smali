.class public final Lo/setDrawerListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setDrawerListener$onPostMessage;,
        Lo/setDrawerListener$onMessageChannelReady;,
        Lo/setDrawerListener$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\t\u0008\u0002\u0018\u00002\u00020\u0001B5\u0012\u0016\u0008\u0002\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0001\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0004H\u0016R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dreamplug/utils/DeBouncingOnClickListener;",
        "Landroid/view/View$OnClickListener;",
        "onClickListener",
        "Lkotlin/Function1;",
        "Landroid/view/View;",
        "",
        "viewOnClickListener",
        "durationInMillis",
        "",
        "(Lkotlin/jvm/functions/Function1;Landroid/view/View$OnClickListener;Ljava/lang/Long;)V",
        "getDurationInMillis",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getViewOnClickListener",
        "()Landroid/view/View$OnClickListener;",
        "onClick",
        "v",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Landroid/view/View$OnClickListener;

.field private final onNavigationEvent:Ljava/lang/Long;

.field private final onPostMessage:Lo/onDisconnectSetValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDisconnectSetValue<",
            "Landroid/view/View;",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x7

    .line 5000
    invoke-direct {p0, v0, v0, v0, v1}, Lo/setDrawerListener;-><init>(Lo/onDisconnectSetValue;Landroid/view/View$OnClickListener;Ljava/lang/Long;I)V

    return-void
.end method

.method private constructor <init>(Lo/onDisconnectSetValue;Landroid/view/View$OnClickListener;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onDisconnectSetValue<",
            "-",
            "Landroid/view/View;",
            "Lo/addWrites;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .line 3009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setDrawerListener;->onPostMessage:Lo/onDisconnectSetValue;

    iput-object p2, p0, Lo/setDrawerListener;->onMessageChannelReady:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lo/setDrawerListener;->onNavigationEvent:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Lo/onDisconnectSetValue;Landroid/view/View$OnClickListener;Ljava/lang/Long;I)V
    .locals 2

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    move-object p2, v1

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v1

    .line 4009
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lo/setDrawerListener;-><init>(Lo/onDisconnectSetValue;Landroid/view/View$OnClickListener;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1011
    sget-object v0, Lo/replaceAllInternal;->extraCallback:Lo/replaceAllInternal$onNavigationEvent;

    .line 1047
    invoke-static {}, Lo/replaceAllInternal;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1012
    sget-object v0, Lo/replaceAllInternal;->extraCallback:Lo/replaceAllInternal$onNavigationEvent;

    const/4 v0, 0x0

    .line 2047
    invoke-static {v0}, Lo/replaceAllInternal;->onMessageChannelReady(Z)V

    .line 1013
    iget-object v0, p0, Lo/setDrawerListener;->onNavigationEvent:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xfa

    .line 1014
    :goto_0
    sget-object v2, Lo/replaceAllInternal;->extraCallback:Lo/replaceAllInternal$onNavigationEvent;

    .line 2048
    invoke-static {}, Lo/replaceAllInternal;->extraCallback()Lo/getServerTime;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1014
    new-instance v3, Lo/getBoolean;

    invoke-direct {v3, v2}, Lo/getBoolean;-><init>(Lo/getServerTime;)V

    move-object v2, v3

    :cond_1
    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1015
    iget-object v0, p0, Lo/setDrawerListener;->onPostMessage:Lo/onDisconnectSetValue;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    :cond_2
    iget-object v0, p0, Lo/setDrawerListener;->onMessageChannelReady:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_3
    return-void
.end method
