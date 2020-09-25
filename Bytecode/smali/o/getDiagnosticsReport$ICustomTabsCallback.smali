.class public final Lo/getDiagnosticsReport$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getDiagnosticsReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public final extraCallback:I

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1586
    iput p1, p0, Lo/getDiagnosticsReport$ICustomTabsCallback;->onNavigationEvent:I

    .line 1587
    iput p2, p0, Lo/getDiagnosticsReport$ICustomTabsCallback;->extraCallback:I

    .line 1588
    iput p3, p0, Lo/getDiagnosticsReport$ICustomTabsCallback;->onMessageChannelReady:I

    return-void
.end method
