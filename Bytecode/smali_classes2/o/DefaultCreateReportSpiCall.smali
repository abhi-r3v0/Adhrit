.class public final Lo/DefaultCreateReportSpiCall;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DefaultCreateReportSpiCall$onMessageChannelReady;,
        Lo/DefaultCreateReportSpiCall$extraCallback;
    }
.end annotation


# static fields
.field static final ICustomTabsCallback:I = 0x1a

.field static final extraCallback:I = 0xb

.field static final onMessageChannelReady:I = 0xc

.field static final onNavigationEvent:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static ICustomTabsCallback(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static onNavigationEvent(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method public static onPostMessage(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x3

    return p0
.end method
