.class public final Lo/unregisterEventNames$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/unregisterEventNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lo/unregisterEventNames$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field public static final onNavigationEvent:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Lo/unregisterEventNames$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Lo/unregisterEventNames$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 209
    new-instance v0, Lo/unregisterEventNames$onPostMessage;

    invoke-direct {v0}, Lo/unregisterEventNames$onPostMessage;-><init>()V

    sput-object v0, Lo/unregisterEventNames$onPostMessage;->onNavigationEvent:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Lo/unregisterEventNames$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/unregisterEventNames$onMessageChannelReady;-><init>(B)V

    iput-object v0, p0, Lo/unregisterEventNames$onPostMessage;->ICustomTabsCallback:Lo/unregisterEventNames$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public final bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 207
    check-cast p2, Lo/unregisterEventNames$onMessageChannelReady;

    check-cast p3, Lo/unregisterEventNames$onMessageChannelReady;

    .line 1216
    iget-object v0, p0, Lo/unregisterEventNames$onPostMessage;->ICustomTabsCallback:Lo/unregisterEventNames$onMessageChannelReady;

    iget v1, p2, Lo/unregisterEventNames$onMessageChannelReady;->onMessageChannelReady:F

    iget v2, p3, Lo/unregisterEventNames$onMessageChannelReady;->onMessageChannelReady:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    mul-float v1, v1, v3

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    .line 1217
    iget v2, p2, Lo/unregisterEventNames$onMessageChannelReady;->extraCallback:F

    iget v4, p3, Lo/unregisterEventNames$onMessageChannelReady;->extraCallback:F

    mul-float v2, v2, v3

    mul-float v4, v4, p1

    add-float/2addr v2, v4

    .line 1218
    iget p2, p2, Lo/unregisterEventNames$onMessageChannelReady;->onNavigationEvent:F

    iget p3, p3, Lo/unregisterEventNames$onMessageChannelReady;->onNavigationEvent:F

    mul-float v3, v3, p2

    mul-float p1, p1, p3

    add-float/2addr v3, p1

    .line 4157
    iput v1, v0, Lo/unregisterEventNames$onMessageChannelReady;->onMessageChannelReady:F

    .line 4158
    iput v2, v0, Lo/unregisterEventNames$onMessageChannelReady;->extraCallback:F

    .line 4159
    iput v3, v0, Lo/unregisterEventNames$onMessageChannelReady;->onNavigationEvent:F

    .line 1220
    iget-object p1, p0, Lo/unregisterEventNames$onPostMessage;->ICustomTabsCallback:Lo/unregisterEventNames$onMessageChannelReady;

    return-object p1
.end method
