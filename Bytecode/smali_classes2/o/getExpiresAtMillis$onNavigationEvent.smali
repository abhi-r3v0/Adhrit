.class public final Lo/getExpiresAtMillis$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getExpiresAtMillis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;

.field final extraCallback:Lo/getExpiresAtMillis$onPostMessage;


# direct methods
.method public constructor <init>(Lo/getExpiresAtMillis$onPostMessage;)V
    .locals 1

    const/4 v0, 0x0

    .line 242
    invoke-direct {p0, p1, v0}, Lo/getExpiresAtMillis$onNavigationEvent;-><init>(Lo/getExpiresAtMillis$onPostMessage;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lo/getExpiresAtMillis$onPostMessage;Ljava/lang/String;)V
    .locals 0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Lo/getExpiresAtMillis$onNavigationEvent;->extraCallback:Lo/getExpiresAtMillis$onPostMessage;

    .line 238
    iput-object p2, p0, Lo/getExpiresAtMillis$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method
