.class public final Lo/setViewPool$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setViewPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public final ICustomTabsCallback$Stub:F

.field public final ICustomTabsCallback$Stub$Proxy:Z

.field public final ICustomTabsService:I

.field public final asBinder:I

.field public final asInterface:Z

.field public final extraCallback:I

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:I

.field public final onPostMessage:I

.field public final onRelationshipValidationResult:I

.field public final onTransact:Z

.field public final warmup:I


# direct methods
.method public constructor <init>(IIIIIIFZZIIIZ)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lo/setViewPool$extraCallback;->onPostMessage:I

    .line 62
    iput p2, p0, Lo/setViewPool$extraCallback;->ICustomTabsCallback:I

    .line 63
    iput p3, p0, Lo/setViewPool$extraCallback;->onNavigationEvent:I

    .line 64
    iput p4, p0, Lo/setViewPool$extraCallback;->onMessageChannelReady:I

    .line 65
    iput p5, p0, Lo/setViewPool$extraCallback;->extraCallback:I

    .line 66
    iput p6, p0, Lo/setViewPool$extraCallback;->onRelationshipValidationResult:I

    .line 67
    iput p7, p0, Lo/setViewPool$extraCallback;->ICustomTabsCallback$Stub:F

    .line 68
    iput-boolean p8, p0, Lo/setViewPool$extraCallback;->onTransact:Z

    .line 69
    iput-boolean p9, p0, Lo/setViewPool$extraCallback;->asInterface:Z

    .line 70
    iput p10, p0, Lo/setViewPool$extraCallback;->asBinder:I

    .line 71
    iput p11, p0, Lo/setViewPool$extraCallback;->ICustomTabsService:I

    .line 72
    iput p12, p0, Lo/setViewPool$extraCallback;->warmup:I

    .line 73
    iput-boolean p13, p0, Lo/setViewPool$extraCallback;->ICustomTabsCallback$Stub$Proxy:Z

    return-void
.end method
