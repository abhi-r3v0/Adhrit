.class public final Lo/setUpdatedAt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setUpdatedAt$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/setCustomAmount$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onNavigationEvent<",
            "Lo/Information;",
            "Lo/setUpdatedAt$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final asInterface:Lo/setCustomAmount$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onNavigationEvent<",
            "Lo/getReference_id;",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final extraCallback:Lo/setCustomAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static onMessageChannelReady:Lo/setCustomAmount$onRelationshipValidationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onRelationshipValidationResult<",
            "Lo/Information;",
            ">;"
        }
    .end annotation
.end field

.field private static onNavigationEvent:Lo/setCustomAmount$onRelationshipValidationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onRelationshipValidationResult<",
            "Lo/getReference_id;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback$Stub:J

.field private ICustomTabsCallback$Stub$Proxy:I

.field private ICustomTabsService:I

.field private asBinder:I

.field private getInterfaceDescriptor:Ljava/lang/String;

.field private newSession:Z

.field public onPostMessage:I

.field private onRelationshipValidationResult:[B

.field private onTransact:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 2
    new-instance v0, Lo/setCustomAmount$onRelationshipValidationResult;

    invoke-direct {v0}, Lo/setCustomAmount$onRelationshipValidationResult;-><init>()V

    sput-object v0, Lo/setUpdatedAt;->onMessageChannelReady:Lo/setCustomAmount$onRelationshipValidationResult;

    .line 3
    new-instance v0, Lo/setCustomAmount$onRelationshipValidationResult;

    invoke-direct {v0}, Lo/setCustomAmount$onRelationshipValidationResult;-><init>()V

    sput-object v0, Lo/setUpdatedAt;->onNavigationEvent:Lo/setCustomAmount$onRelationshipValidationResult;

    .line 4
    new-instance v0, Lo/getFailureReason;

    invoke-direct {v0}, Lo/getFailureReason;-><init>()V

    sput-object v0, Lo/setUpdatedAt;->ICustomTabsCallback:Lo/setCustomAmount$onNavigationEvent;

    .line 5
    new-instance v0, Lo/OrderPayment$$Parcelable;

    invoke-direct {v0}, Lo/OrderPayment$$Parcelable;-><init>()V

    sput-object v0, Lo/setUpdatedAt;->asInterface:Lo/setCustomAmount$onNavigationEvent;

    .line 7
    new-instance v0, Lo/setCustomAmount;

    sget-object v1, Lo/setUpdatedAt;->ICustomTabsCallback:Lo/setCustomAmount$onNavigationEvent;

    sget-object v2, Lo/setUpdatedAt;->onMessageChannelReady:Lo/setCustomAmount$onRelationshipValidationResult;

    const-string v3, "Auth.CREDENTIALS_API"

    invoke-direct {v0, v3, v1, v2}, Lo/setCustomAmount;-><init>(Ljava/lang/String;Lo/setCustomAmount$onNavigationEvent;Lo/setCustomAmount$onRelationshipValidationResult;)V

    .line 8
    new-instance v0, Lo/setCustomAmount;

    sget-object v1, Lo/setUpdatedAt;->asInterface:Lo/setCustomAmount$onNavigationEvent;

    sget-object v2, Lo/setUpdatedAt;->onNavigationEvent:Lo/setCustomAmount$onRelationshipValidationResult;

    const-string v3, "Auth.GOOGLE_SIGN_IN_API"

    invoke-direct {v0, v3, v1, v2}, Lo/setCustomAmount;-><init>(Ljava/lang/String;Lo/setCustomAmount$onNavigationEvent;Lo/setCustomAmount$onRelationshipValidationResult;)V

    sput-object v0, Lo/setUpdatedAt;->extraCallback:Lo/setCustomAmount;

    .line 10
    new-instance v0, Lo/getErrors;

    invoke-direct {v0}, Lo/getErrors;-><init>()V

    .line 11
    new-instance v0, Lo/JusPayAuthResponse;

    invoke-direct {v0}, Lo/JusPayAuthResponse;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lo/setUpdatedAt;->onRelationshipValidationResult:[B

    invoke-direct {p0}, Lo/setUpdatedAt;->onPostMessage()V

    return-void
.end method

.method private onPostMessage(I[BII)I
    .locals 2

    .line 6000
    iget v0, p0, Lo/setUpdatedAt;->asBinder:I

    if-ge v0, p1, :cond_1

    sub-int v0, p1, v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    iget-object v0, p0, Lo/setUpdatedAt;->onRelationshipValidationResult:[B

    iget v1, p0, Lo/setUpdatedAt;->asBinder:I

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, Lo/setUpdatedAt;->asBinder:I

    add-int/2addr p2, p4

    iput p2, p0, Lo/setUpdatedAt;->asBinder:I

    if-ge p2, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    return p4

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private onPostMessage()V
    .locals 4

    const/4 v0, 0x0

    .line 10000
    iput v0, p0, Lo/setUpdatedAt;->asBinder:I

    const/4 v1, -0x1

    iput v1, p0, Lo/setUpdatedAt;->ICustomTabsCallback$Stub$Proxy:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lo/setUpdatedAt;->ICustomTabsCallback$Stub:J

    iput-boolean v0, p0, Lo/setUpdatedAt;->newSession:Z

    const/16 v0, 0x1e

    iput v0, p0, Lo/setUpdatedAt;->onPostMessage:I

    iput-wide v2, p0, Lo/setUpdatedAt;->onTransact:J

    iput v1, p0, Lo/setUpdatedAt;->ICustomTabsService:I

    const/4 v0, 0x0

    iput-object v0, p0, Lo/setUpdatedAt;->getInterfaceDescriptor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Lo/retrieve;
    .locals 19

    move-object/from16 v0, p0

    .line 7000
    iget v1, v0, Lo/setUpdatedAt;->asBinder:I

    iget v2, v0, Lo/setUpdatedAt;->onPostMessage:I

    if-ge v1, v2, :cond_0

    iget-object v4, v0, Lo/setUpdatedAt;->getInterfaceDescriptor:Ljava/lang/String;

    iget-wide v5, v0, Lo/setUpdatedAt;->onTransact:J

    iget v7, v0, Lo/setUpdatedAt;->ICustomTabsService:I

    iget-object v2, v0, Lo/setUpdatedAt;->onRelationshipValidationResult:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v10

    iget-boolean v9, v0, Lo/setUpdatedAt;->newSession:Z

    .line 8000
    new-instance v1, Lo/retrieve;

    const/4 v8, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lo/retrieve;-><init>(Ljava/lang/String;JIZZ[B)V

    return-object v1

    .line 7000
    :cond_0
    iget-object v12, v0, Lo/setUpdatedAt;->getInterfaceDescriptor:Ljava/lang/String;

    iget-wide v13, v0, Lo/setUpdatedAt;->onTransact:J

    iget v15, v0, Lo/setUpdatedAt;->ICustomTabsService:I

    iget-object v1, v0, Lo/setUpdatedAt;->onRelationshipValidationResult:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v18

    iget-boolean v1, v0, Lo/setUpdatedAt;->newSession:Z

    .line 9000
    new-instance v2, Lo/retrieve;

    const/16 v16, 0x0

    move-object v11, v2

    move/from16 v17, v1

    invoke-direct/range {v11 .. v18}, Lo/retrieve;-><init>(Ljava/lang/String;JIZZ[B)V

    .line 7000
    invoke-direct/range {p0 .. p0}, Lo/setUpdatedAt;->onPostMessage()V

    return-object v2
.end method

.method public final onPostMessage([BII)I
    .locals 9

    const/16 v0, 0x1e

    .line 2000
    invoke-direct {p0, v0, p1, p2, p3}, Lo/setUpdatedAt;->onPostMessage(I[BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    iget-wide v3, p0, Lo/setUpdatedAt;->ICustomTabsCallback$Stub:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget-object v3, p0, Lo/setUpdatedAt;->onRelationshipValidationResult:[B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lo/extraCallback;->ICustomTabsCallback([BI)J

    move-result-wide v5

    iput-wide v5, p0, Lo/setUpdatedAt;->ICustomTabsCallback$Stub:J

    const-wide/32 v7, 0x4034b50

    cmp-long v3, v5, v7

    if-nez v3, :cond_1

    iput-boolean v4, p0, Lo/setUpdatedAt;->newSession:Z

    iget-object v3, p0, Lo/setUpdatedAt;->onRelationshipValidationResult:[B

    const/16 v4, 0x12

    invoke-static {v3, v4}, Lo/extraCallback;->ICustomTabsCallback([BI)J

    move-result-wide v3

    iput-wide v3, p0, Lo/setUpdatedAt;->onTransact:J

    iget-object v3, p0, Lo/setUpdatedAt;->onRelationshipValidationResult:[B

    const/16 v4, 0x8

    .line 3000
    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x9

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v4

    or-int/2addr v5, v6

    .line 2000
    iput v5, p0, Lo/setUpdatedAt;->ICustomTabsService:I

    const/16 v5, 0x1a

    .line 4000
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x1b

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v4

    or-int/2addr v5, v6

    .line 2000
    iput v5, p0, Lo/setUpdatedAt;->ICustomTabsCallback$Stub$Proxy:I

    const/16 v6, 0x1c

    .line 5000
    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x1d

    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v4, v7, 0x8

    or-int/2addr v4, v6

    add-int/2addr v5, v0

    add-int/2addr v5, v4

    .line 2000
    iput v5, p0, Lo/setUpdatedAt;->onPostMessage:I

    array-length v3, v3

    if-ge v3, v5, :cond_2

    :goto_0
    add-int/2addr v3, v3

    if-ge v3, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lo/setUpdatedAt;->onRelationshipValidationResult:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, p0, Lo/setUpdatedAt;->onRelationshipValidationResult:[B

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lo/setUpdatedAt;->newSession:Z

    :cond_2
    :goto_1
    iget v3, p0, Lo/setUpdatedAt;->onPostMessage:I

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    invoke-direct {p0, v3, p1, p2, p3}, Lo/setUpdatedAt;->onPostMessage(I[BII)I

    move-result p1

    if-ne p1, v2, :cond_3

    return v2

    :cond_3
    add-int/2addr v1, p1

    iget-boolean p1, p0, Lo/setUpdatedAt;->newSession:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lo/setUpdatedAt;->getInterfaceDescriptor:Ljava/lang/String;

    if-nez p1, :cond_4

    new-instance p1, Ljava/lang/String;

    iget-object p2, p0, Lo/setUpdatedAt;->onRelationshipValidationResult:[B

    iget p3, p0, Lo/setUpdatedAt;->ICustomTabsCallback$Stub$Proxy:I

    invoke-direct {p1, p2, v0, p3}, Ljava/lang/String;-><init>([BII)V

    iput-object p1, p0, Lo/setUpdatedAt;->getInterfaceDescriptor:Ljava/lang/String;

    :cond_4
    return v1

    :cond_5
    return v2
.end method
