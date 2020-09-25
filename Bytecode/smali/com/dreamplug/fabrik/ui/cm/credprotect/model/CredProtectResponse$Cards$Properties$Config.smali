.class public final Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$Pitch;,
        Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$RecommendedEmail;
    }
.end annotation

.annotation runtime Lo/NativeApi;
    extraCallback = true
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0010\u0011B\'\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;",
        "",
        "pitch",
        "",
        "Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$Pitch;",
        "recommendedEmail",
        "Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$RecommendedEmail;",
        "header",
        "",
        "(Ljava/util/List;Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$RecommendedEmail;Ljava/lang/String;)V",
        "getHeader",
        "()Ljava/lang/String;",
        "getPitch",
        "()Ljava/util/List;",
        "getRecommendedEmail",
        "()Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$RecommendedEmail;",
        "Pitch",
        "RecommendedEmail",
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
.field public final extraCallback:Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$RecommendedEmail;

.field public final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$Pitch;",
            ">;"
        }
    .end annotation
.end field

.field public final onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$RecommendedEmail;Ljava/lang/String;)V
    .locals 1
    .param p2    # Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$RecommendedEmail;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "recommended_details"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$Pitch;",
            ">;",
            "Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$RecommendedEmail;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "pitch"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "header"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;->onMessageChannelReady:Ljava/util/List;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;->extraCallback:Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config$RecommendedEmail;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;->onPostMessage:Ljava/lang/String;

    return-void
.end method
