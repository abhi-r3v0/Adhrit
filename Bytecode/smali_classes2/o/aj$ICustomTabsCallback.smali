.class abstract Lo/aj$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ICustomTabsCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract ICustomTabsCallback()Lo/aj$ICustomTabsCallback;
.end method

.method abstract ICustomTabsCallback$Stub()Lo/aj;
.end method

.method abstract extraCallback()Lo/aj$ICustomTabsCallback;
.end method

.method abstract onMessageChannelReady()Lo/aj$ICustomTabsCallback;
.end method

.method abstract onNavigationEvent()Lo/aj$ICustomTabsCallback;
.end method

.method abstract onPostMessage()Lo/aj$ICustomTabsCallback;
.end method
