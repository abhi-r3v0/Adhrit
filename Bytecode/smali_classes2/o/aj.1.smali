.class public abstract Lo/aj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aj$ICustomTabsCallback;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1047
    new-instance v0, Lo/ag$c$extraCallback;

    invoke-direct {v0}, Lo/ag$c$extraCallback;-><init>()V

    .line 29
    invoke-virtual {v0}, Lo/aj$ICustomTabsCallback;->onPostMessage()Lo/aj$ICustomTabsCallback;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lo/aj$ICustomTabsCallback;->onNavigationEvent()Lo/aj$ICustomTabsCallback;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lo/aj$ICustomTabsCallback;->extraCallback()Lo/aj$ICustomTabsCallback;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lo/aj$ICustomTabsCallback;->ICustomTabsCallback()Lo/aj$ICustomTabsCallback;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lo/aj$ICustomTabsCallback;->onMessageChannelReady()Lo/aj$ICustomTabsCallback;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lo/aj$ICustomTabsCallback;->ICustomTabsCallback$Stub()Lo/aj;

    move-result-object v0

    sput-object v0, Lo/aj;->ICustomTabsCallback:Lo/aj;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()I
.end method

.method public abstract extraCallback()I
.end method

.method public abstract onMessageChannelReady()J
.end method

.method abstract onNavigationEvent()J
.end method

.method abstract onPostMessage()I
.end method
