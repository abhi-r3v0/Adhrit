.class public Lo/CrashlyticsReport$Session;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CrashlyticsReport$Session$Application$Organization;


# static fields
.field private static final SHARED_INSTANCE:Lo/CrashlyticsReport$Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lo/CrashlyticsReport$Session;

    invoke-direct {v0}, Lo/CrashlyticsReport$Session;-><init>()V

    sput-object v0, Lo/CrashlyticsReport$Session;->SHARED_INSTANCE:Lo/CrashlyticsReport$Session;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lo/CrashlyticsReport$Session;
    .locals 1

    .line 29
    sget-object v0, Lo/CrashlyticsReport$Session;->SHARED_INSTANCE:Lo/CrashlyticsReport$Session;

    return-object v0
.end method


# virtual methods
.method public applyToLocalView(Lo/writeRawMessageSetExtension;Lo/getStream;)Lo/writeRawMessageSetExtension;
    .locals 0

    .line 34
    invoke-static {p2, p1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$Builder;->valueOf(Lo/getStream;Lo/writeRawMessageSetExtension;)Lo/writeRawMessageSetExtension;

    move-result-object p1

    return-object p1
.end method

.method public applyToRemoteDocument(Lo/writeRawMessageSetExtension;Lo/writeRawMessageSetExtension;)Lo/writeRawMessageSetExtension;
    .locals 0

    return-object p2
.end method

.method public computeBaseValue(Lo/writeRawMessageSetExtension;)Lo/writeRawMessageSetExtension;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
