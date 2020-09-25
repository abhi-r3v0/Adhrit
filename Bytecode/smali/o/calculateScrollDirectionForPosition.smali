.class public abstract Lo/calculateScrollDirectionForPosition;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/calculateScrollDirectionForPosition$onNavigationEvent;,
        Lo/calculateScrollDirectionForPosition$ICustomTabsCallback;,
        Lo/calculateScrollDirectionForPosition$onTransact;,
        Lo/calculateScrollDirectionForPosition$onPostMessage;,
        Lo/calculateScrollDirectionForPosition$onMessageChannelReady;,
        Lo/calculateScrollDirectionForPosition$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0006\r\u000e\u000f\u0010\u0011\u0012B\'\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u0082\u0001\u0006\u0013\u0014\u0015\u0016\u0017\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/widget/TextViewStyle;",
        "",
        "fontSize",
        "",
        "cornerRadius",
        "horizontalPadding",
        "verticalPadding",
        "(FFFF)V",
        "getCornerRadius",
        "()F",
        "getFontSize",
        "getHorizontalPadding",
        "getVerticalPadding",
        "NEU",
        "NEUTERTIARY",
        "PRIMARY",
        "QUATERNARY",
        "SECONDARY",
        "TERTIARY",
        "Lcom/dreamplug/widget/TextViewStyle$PRIMARY;",
        "Lcom/dreamplug/widget/TextViewStyle$SECONDARY;",
        "Lcom/dreamplug/widget/TextViewStyle$TERTIARY;",
        "Lcom/dreamplug/widget/TextViewStyle$QUATERNARY;",
        "Lcom/dreamplug/widget/TextViewStyle$NEU;",
        "Lcom/dreamplug/widget/TextViewStyle$NEUTERTIARY;",
        "widget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final extraCallback:F

.field public final onMessageChannelReady:F

.field public final onNavigationEvent:F

.field public final onPostMessage:F


# direct methods
.method private constructor <init>(FFFF)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/calculateScrollDirectionForPosition;->onPostMessage:F

    iput p2, p0, Lo/calculateScrollDirectionForPosition;->onMessageChannelReady:F

    iput p3, p0, Lo/calculateScrollDirectionForPosition;->extraCallback:F

    iput p4, p0, Lo/calculateScrollDirectionForPosition;->onNavigationEvent:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFB)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lo/calculateScrollDirectionForPosition;-><init>(FFFF)V

    return-void
.end method
