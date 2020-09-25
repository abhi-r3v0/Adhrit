.class public final Lo/setBackgroundResource;
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lclub/cred/interjection/data/db/CampaignDatabaseManager;",
        "",
        "()V",
        "app",
        "Landroid/app/Application;",
        "getApp",
        "()Landroid/app/Application;",
        "setApp",
        "(Landroid/app/Application;)V",
        "db",
        "Lclub/cred/interjection/data/db/CampaignDatabase;",
        "getDb",
        "()Lclub/cred/interjection/data/db/CampaignDatabase;",
        "db$delegate",
        "Lkotlin/Lazy;",
        "getCampaignDao",
        "application",
        "interjection_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/isSameListener;

.field public static onNavigationEvent:Landroid/app/Application;

.field public static final onPostMessage:Lo/setBackgroundResource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    new-instance v0, Lo/setBackgroundResource;

    invoke-direct {v0}, Lo/setBackgroundResource;-><init>()V

    sput-object v0, Lo/setBackgroundResource;->onPostMessage:Lo/setBackgroundResource;

    .line 10
    sget-object v0, Lo/setBackgroundResource$onNavigationEvent;->onNavigationEvent:Lo/setBackgroundResource$onNavigationEvent;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 10
    sput-object v1, Lo/setBackgroundResource;->onMessageChannelReady:Lo/isSameListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onNavigationEvent()Landroid/app/Application;
    .locals 2

    .line 8
    sget-object v0, Lo/setBackgroundResource;->onNavigationEvent:Landroid/app/Application;

    if-nez v0, :cond_0

    const-string v1, "app"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
