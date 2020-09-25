.class public final Lcom/dreamplug/androidapp/utils/network/MoshiDateAdapter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0004H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/utils/network/MoshiDateAdapter;",
        "",
        "()V",
        "fromJson",
        "",
        "dateString",
        "",
        "toJson",
        "timestamp",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/lang/String;)J
    .locals 2
    .annotation runtime Lcom/dreamplug/androidapp/utils/network/CredDateFormat;
    .end annotation

    .annotation runtime Lo/nativeInit;
    .end annotation

    const-string v0, "dateString"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lo/setPreventCornerOverlap;->onPostMessage:Lo/setPreventCornerOverlap;

    invoke-static {p1}, Lo/setPreventCornerOverlap;->extraCallback(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toJson(J)Ljava/lang/String;
    .locals 1
    .param p1    # J
        .annotation runtime Lcom/dreamplug/androidapp/utils/network/CredDateFormat;
        .end annotation
    .end param
    .annotation runtime Lo/SessionMetadataJsonSerializer;
    .end annotation

    .line 15
    sget-object v0, Lo/setPreventCornerOverlap;->onPostMessage:Lo/setPreventCornerOverlap;

    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    .line 1072
    invoke-static {p1, p2, v0}, Lo/setPreventCornerOverlap;->onMessageChannelReady(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
