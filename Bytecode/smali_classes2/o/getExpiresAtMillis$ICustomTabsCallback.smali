.class final Lo/getExpiresAtMillis$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getExpiresAtMillis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field extraCallback:Ljava/lang/String;

.field onMessageChannelReady:Ljava/lang/String;

.field onNavigationEvent:Lo/getExpiresAtMillis$onNavigationEvent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/getExpiresAtMillis$onNavigationEvent;Ljava/lang/String;)V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lo/getExpiresAtMillis$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    .line 206
    iput-object p2, p0, Lo/getExpiresAtMillis$ICustomTabsCallback;->onNavigationEvent:Lo/getExpiresAtMillis$onNavigationEvent;

    .line 207
    iput-object p3, p0, Lo/getExpiresAtMillis$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method
