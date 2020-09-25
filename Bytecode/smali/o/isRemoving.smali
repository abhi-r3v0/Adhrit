.class public final Lo/isRemoving;
.super Lo/isMenuVisible;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/isMenuVisible<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\r\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0002\u0010\nR\u000e\u0010\u0005\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/remote/firebase/RemoteLongVarDelegate;",
        "Lcom/dreamplug/fabrik/helper/remote/firebase/RemoteVarDelegate;",
        "",
        "key",
        "",
        "defaultValue",
        "tagRead",
        "",
        "(Ljava/lang/String;JZ)V",
        "getRemoteValue",
        "()Ljava/lang/Long;",
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
.field private final ICustomTabsCallback:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JZ)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4}, Lo/isMenuVisible;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    iput-object p1, p0, Lo/isRemoving;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage()Ljava/lang/Object;
    .locals 2

    .line 1066
    invoke-static {}, Lo/CrashlyticsReportPersistence$$Lambda$4;->getInstance()Lo/CrashlyticsReportPersistence$$Lambda$4;

    move-result-object v0

    iget-object v1, p0, Lo/isRemoving;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/CrashlyticsReportPersistence$$Lambda$4;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
