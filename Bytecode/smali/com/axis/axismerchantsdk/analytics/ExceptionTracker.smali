.class public Lcom/axis/axismerchantsdk/analytics/ExceptionTracker;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public extraCallback:Ljava/lang/Throwable;

.field onNavigationEvent:Ljava/util/Date;

.field public onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/axis/axismerchantsdk/analytics/ExceptionTracker;->onNavigationEvent:Ljava/util/Date;

    return-void
.end method
