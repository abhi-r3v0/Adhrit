.class final synthetic Lo/populateBinaryImageData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;


# static fields
.field private static final instance:Lo/populateBinaryImageData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/populateBinaryImageData;

    invoke-direct {v0}, Lo/populateBinaryImageData;-><init>()V

    sput-object v0, Lo/populateBinaryImageData;->instance:Lo/populateBinaryImageData;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;
    .locals 1

    sget-object v0, Lo/populateBinaryImageData;->instance:Lo/populateBinaryImageData;

    return-object v0
.end method


# virtual methods
.method public final translate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lo/populateFramesList$onNavigationEvent;->lambda$static$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
