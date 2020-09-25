.class public final Lo/setSwitchMinWidth$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getAppFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setSwitchMinWidth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/getAppFile<",
        "Lo/getIdToken;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "appUpdateInfo",
        "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
        "kotlin.jvm.PlatformType",
        "onSuccess"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/setSwitchMinWidth;


# direct methods
.method public constructor <init>(Lo/setSwitchMinWidth;)V
    .locals 0

    iput-object p1, p0, Lo/setSwitchMinWidth$extraCallback;->onNavigationEvent:Lo/setSwitchMinWidth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage(Ljava/lang/Object;)V
    .locals 2

    .line 29
    check-cast p1, Lo/getIdToken;

    .line 1066
    iget-object v0, p0, Lo/setSwitchMinWidth$extraCallback;->onNavigationEvent:Lo/setSwitchMinWidth;

    .line 2061
    iput-object p1, v0, Lo/setSwitchMinWidth;->onMessageChannelReady:Lo/getIdToken;

    .line 1067
    invoke-virtual {p1}, Lo/getIdToken;->onPostMessage()I

    move-result p1

    const/4 v0, 0x1

    const/16 v1, 0x2c

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1075
    :cond_0
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 5000
    sget-object p1, Lo/setTrackTintMode;->AudioAttributesImplBaseParcelizer:Lo/setTitleTextColor;

    sget-object v0, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v0, v0, v1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 1069
    :cond_1
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 3000
    sget-object p1, Lo/setTrackTintMode;->AudioAttributesImplBaseParcelizer:Lo/setTitleTextColor;

    sget-object v0, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v0, v0, v1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    return-void

    .line 1072
    :cond_2
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 4000
    sget-object p1, Lo/setTrackTintMode;->AudioAttributesImplBaseParcelizer:Lo/setTitleTextColor;

    sget-object v0, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v0, v0, v1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    return-void
.end method
