.class public Lcom/axis/axismerchantsdk/analytics/Event;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/axis/axismerchantsdk/analytics/Event$Category;,
        Lcom/axis/axismerchantsdk/analytics/Event$Action;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Ljava/lang/String;

.field public extraCallback:Ljava/lang/String;

.field public onMessageChannelReady:Ljava/lang/String;

.field public onNavigationEvent:Ljava/lang/String;

.field onPostMessage:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/axis/axismerchantsdk/analytics/Event;->onPostMessage:Ljava/util/Date;

    return-void
.end method
