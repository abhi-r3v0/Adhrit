.class public final Lo/onPlayFromUri;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onPlayFromUri$onPostMessage;,
        Lo/onPlayFromUri$extraCallback;
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/onPlayFromUri$onPostMessage;

.field public extraCallback:Landroid/content/SharedPreferences;

.field public onMessageChannelReady:Lo/onPlayFromUri$extraCallback;

.field public onNavigationEvent:Ljava/lang/String;

.field public onPostMessage:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lo/onPlayFromUri;->onPostMessage:Landroid/content/Context;

    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_preferences"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2186
    iput-object p1, p0, Lo/onPlayFromUri;->onNavigationEvent:Ljava/lang/String;

    const/4 p1, 0x0

    .line 2187
    iput-object p1, p0, Lo/onPlayFromUri;->extraCallback:Landroid/content/SharedPreferences;

    return-void
.end method
