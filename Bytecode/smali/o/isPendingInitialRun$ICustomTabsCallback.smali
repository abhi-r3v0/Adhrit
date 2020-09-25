.class public abstract Lo/isPendingInitialRun$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isPendingInitialRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isPendingInitialRun$ICustomTabsCallback$extraCallback;,
        Lo/isPendingInitialRun$ICustomTabsCallback$onNavigationEvent;,
        Lo/isPendingInitialRun$ICustomTabsCallback$onMessageChannelReady;,
        Lo/isPendingInitialRun$ICustomTabsCallback$onPostMessage;,
        Lo/isPendingInitialRun$ICustomTabsCallback$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0005\u0007\u0008\t\n\u000bB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0005\u000c\r\u000e\u000f\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dreamplug/river/RiverManager$Source;",
        "",
        "source",
        "",
        "(I)V",
        "getSource",
        "()I",
        "DEFAULT",
        "FNS",
        "INCOMING_SMS",
        "LOGIN",
        "PN",
        "Lcom/dreamplug/river/RiverManager$Source$LOGIN;",
        "Lcom/dreamplug/river/RiverManager$Source$INCOMING_SMS;",
        "Lcom/dreamplug/river/RiverManager$Source$PN;",
        "Lcom/dreamplug/river/RiverManager$Source$DEFAULT;",
        "Lcom/dreamplug/river/RiverManager$Source$FNS;",
        "river_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/isPendingInitialRun$ICustomTabsCallback;-><init>()V

    return-void
.end method
