.class public final enum Lo/EmiScreenResponse$BottomBanner$extraCallback;
.super Ljava/lang/Enum;

# interfaces
.implements Lo/LoanStatusResponse_DetailJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/EmiScreenResponse$BottomBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/EmiScreenResponse$BottomBanner$extraCallback;",
        ">;",
        "Lo/LoanStatusResponse_DetailJsonAdapter;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/EmiScreenResponse$BottomBanner$extraCallback;

.field public static final enum ICustomTabsCallback$Stub:Lo/EmiScreenResponse$BottomBanner$extraCallback;

.field private static final asBinder:Lo/LoanStatusResponse_DataJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/LoanStatusResponse_DataJsonAdapter<",
            "Lo/EmiScreenResponse$BottomBanner$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum extraCallback:Lo/EmiScreenResponse$BottomBanner$extraCallback;

.field public static final enum onMessageChannelReady:Lo/EmiScreenResponse$BottomBanner$extraCallback;

.field public static final enum onNavigationEvent:Lo/EmiScreenResponse$BottomBanner$extraCallback;

.field public static final enum onPostMessage:Lo/EmiScreenResponse$BottomBanner$extraCallback;

.field private static final synthetic onTransact:[Lo/EmiScreenResponse$BottomBanner$extraCallback;


# instance fields
.field private final asInterface:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lo/EmiScreenResponse$BottomBanner$extraCallback;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_KEYMATERIAL"

    invoke-direct {v0, v2, v1, v1}, Lo/EmiScreenResponse$BottomBanner$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/EmiScreenResponse$BottomBanner$extraCallback;->onPostMessage:Lo/EmiScreenResponse$BottomBanner$extraCallback;

    new-instance v0, Lo/EmiScreenResponse$BottomBanner$extraCallback;

    const/4 v2, 0x1

    const-string v3, "SYMMETRIC"

    invoke-direct {v0, v3, v2, v2}, Lo/EmiScreenResponse$BottomBanner$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/EmiScreenResponse$BottomBanner$extraCallback;->ICustomTabsCallback:Lo/EmiScreenResponse$BottomBanner$extraCallback;

    new-instance v0, Lo/EmiScreenResponse$BottomBanner$extraCallback;

    const/4 v3, 0x2

    const-string v4, "ASYMMETRIC_PRIVATE"

    invoke-direct {v0, v4, v3, v3}, Lo/EmiScreenResponse$BottomBanner$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/EmiScreenResponse$BottomBanner$extraCallback;->onMessageChannelReady:Lo/EmiScreenResponse$BottomBanner$extraCallback;

    new-instance v0, Lo/EmiScreenResponse$BottomBanner$extraCallback;

    const/4 v4, 0x3

    const-string v5, "ASYMMETRIC_PUBLIC"

    invoke-direct {v0, v5, v4, v4}, Lo/EmiScreenResponse$BottomBanner$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/EmiScreenResponse$BottomBanner$extraCallback;->extraCallback:Lo/EmiScreenResponse$BottomBanner$extraCallback;

    new-instance v0, Lo/EmiScreenResponse$BottomBanner$extraCallback;

    const/4 v5, 0x4

    const-string v6, "REMOTE"

    invoke-direct {v0, v6, v5, v5}, Lo/EmiScreenResponse$BottomBanner$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/EmiScreenResponse$BottomBanner$extraCallback;->onNavigationEvent:Lo/EmiScreenResponse$BottomBanner$extraCallback;

    new-instance v0, Lo/EmiScreenResponse$BottomBanner$extraCallback;

    const/4 v6, 0x5

    const-string v7, "UNRECOGNIZED"

    const/4 v8, -0x1

    invoke-direct {v0, v7, v6, v8}, Lo/EmiScreenResponse$BottomBanner$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/EmiScreenResponse$BottomBanner$extraCallback;->ICustomTabsCallback$Stub:Lo/EmiScreenResponse$BottomBanner$extraCallback;

    const/4 v7, 0x6

    new-array v7, v7, [Lo/EmiScreenResponse$BottomBanner$extraCallback;

    sget-object v8, Lo/EmiScreenResponse$BottomBanner$extraCallback;->onPostMessage:Lo/EmiScreenResponse$BottomBanner$extraCallback;

    aput-object v8, v7, v1

    sget-object v1, Lo/EmiScreenResponse$BottomBanner$extraCallback;->ICustomTabsCallback:Lo/EmiScreenResponse$BottomBanner$extraCallback;

    aput-object v1, v7, v2

    sget-object v1, Lo/EmiScreenResponse$BottomBanner$extraCallback;->onMessageChannelReady:Lo/EmiScreenResponse$BottomBanner$extraCallback;

    aput-object v1, v7, v3

    sget-object v1, Lo/EmiScreenResponse$BottomBanner$extraCallback;->extraCallback:Lo/EmiScreenResponse$BottomBanner$extraCallback;

    aput-object v1, v7, v4

    sget-object v1, Lo/EmiScreenResponse$BottomBanner$extraCallback;->onNavigationEvent:Lo/EmiScreenResponse$BottomBanner$extraCallback;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lo/EmiScreenResponse$BottomBanner$extraCallback;->onTransact:[Lo/EmiScreenResponse$BottomBanner$extraCallback;

    new-instance v0, Lo/EmiSchedule_EmiCardJsonAdapter;

    invoke-direct {v0}, Lo/EmiSchedule_EmiCardJsonAdapter;-><init>()V

    sput-object v0, Lo/EmiScreenResponse$BottomBanner$extraCallback;->asBinder:Lo/LoanStatusResponse_DataJsonAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lo/EmiScreenResponse$BottomBanner$extraCallback;->asInterface:I

    return-void
.end method

.method public static extraCallback(I)Lo/EmiScreenResponse$BottomBanner$extraCallback;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lo/EmiScreenResponse$BottomBanner$extraCallback;->onNavigationEvent:Lo/EmiScreenResponse$BottomBanner$extraCallback;

    return-object p0

    :cond_1
    sget-object p0, Lo/EmiScreenResponse$BottomBanner$extraCallback;->extraCallback:Lo/EmiScreenResponse$BottomBanner$extraCallback;

    return-object p0

    :cond_2
    sget-object p0, Lo/EmiScreenResponse$BottomBanner$extraCallback;->onMessageChannelReady:Lo/EmiScreenResponse$BottomBanner$extraCallback;

    return-object p0

    :cond_3
    sget-object p0, Lo/EmiScreenResponse$BottomBanner$extraCallback;->ICustomTabsCallback:Lo/EmiScreenResponse$BottomBanner$extraCallback;

    return-object p0

    :cond_4
    sget-object p0, Lo/EmiScreenResponse$BottomBanner$extraCallback;->onPostMessage:Lo/EmiScreenResponse$BottomBanner$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/EmiScreenResponse$BottomBanner$extraCallback;
    .locals 1

    sget-object v0, Lo/EmiScreenResponse$BottomBanner$extraCallback;->onTransact:[Lo/EmiScreenResponse$BottomBanner$extraCallback;

    invoke-virtual {v0}, [Lo/EmiScreenResponse$BottomBanner$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/EmiScreenResponse$BottomBanner$extraCallback;

    return-object v0
.end method


# virtual methods
.method public final onPostMessage()I
    .locals 2

    sget-object v0, Lo/EmiScreenResponse$BottomBanner$extraCallback;->ICustomTabsCallback$Stub:Lo/EmiScreenResponse$BottomBanner$extraCallback;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lo/EmiScreenResponse$BottomBanner$extraCallback;->asInterface:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
