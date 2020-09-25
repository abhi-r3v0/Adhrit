.class public final Lcom/facebook/imageutils/HeifExifUtil;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imageutils/HeifExifUtil$HeifExifUtilAndroidN;
    }
.end annotation


# instance fields
.field private final arg$1:Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;

.field private final arg$2:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;Ljava/lang/Object;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/imageutils/HeifExifUtil;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;

    iput-object p2, p0, Lcom/facebook/imageutils/HeifExifUtil;->arg$2:Ljava/lang/Object;

    return-void
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;Ljava/lang/Object;)Ljava/lang/Runnable;
    .locals 1

    .line 3000
    new-instance v0, Lcom/facebook/imageutils/HeifExifUtil;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imageutils/HeifExifUtil;-><init>(Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2000
    iget-object v0, p0, Lcom/facebook/imageutils/HeifExifUtil;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;

    iget-object v1, p0, Lcom/facebook/imageutils/HeifExifUtil;->arg$2:Ljava/lang/Object;

    invoke-static {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;->lambda$onNext$1(Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;Ljava/lang/Object;)V

    return-void
.end method
