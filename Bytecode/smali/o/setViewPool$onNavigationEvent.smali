.class public final Lo/setViewPool$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setViewPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public final onNavigationEvent:Z

.field public final onPostMessage:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Lo/setViewPool$onNavigationEvent;->onPostMessage:I

    .line 90
    iput p2, p0, Lo/setViewPool$onNavigationEvent;->ICustomTabsCallback:I

    .line 91
    iput-boolean p3, p0, Lo/setViewPool$onNavigationEvent;->onNavigationEvent:Z

    return-void
.end method
