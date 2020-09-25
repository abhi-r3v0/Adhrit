.class public final enum Lo/deleteReports;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/getEventLogSize$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/deleteReports;",
        ">;",
        "Lo/getEventLogSize$ICustomTabsCallback;"
    }
.end annotation


# static fields
.field private static final synthetic ICustomTabsCallback:[Lo/deleteReports;

.field public static final enum extraCallback:Lo/deleteReports;

.field public static final enum onMessageChannelReady:Lo/deleteReports;


# instance fields
.field public final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Lo/deleteReports;

    const/4 v1, 0x0

    const-string v2, "NULL_VALUE"

    invoke-direct {v0, v2, v1, v1}, Lo/deleteReports;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/deleteReports;->onMessageChannelReady:Lo/deleteReports;

    .line 25
    new-instance v0, Lo/deleteReports;

    const/4 v2, 0x1

    const-string v3, "UNRECOGNIZED"

    const/4 v4, -0x1

    invoke-direct {v0, v3, v2, v4}, Lo/deleteReports;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/deleteReports;->extraCallback:Lo/deleteReports;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/deleteReports;

    .line 15
    sget-object v4, Lo/deleteReports;->onMessageChannelReady:Lo/deleteReports;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/deleteReports;->ICustomTabsCallback:[Lo/deleteReports;

    .line 69
    new-instance v0, Lo/deleteReports$1;

    invoke-direct {v0}, Lo/deleteReports$1;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput p3, p0, Lo/deleteReports;->onPostMessage:I

    return-void
.end method

.method public static onPostMessage(I)Lo/deleteReports;
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_0
    sget-object p0, Lo/deleteReports;->onMessageChannelReady:Lo/deleteReports;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/deleteReports;
    .locals 1

    .line 15
    const-class v0, Lo/deleteReports;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/deleteReports;

    return-object p0
.end method

.method public static values()[Lo/deleteReports;
    .locals 1

    .line 15
    sget-object v0, Lo/deleteReports;->ICustomTabsCallback:[Lo/deleteReports;

    invoke-virtual {v0}, [Lo/deleteReports;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/deleteReports;

    return-object v0
.end method


# virtual methods
.method public final extraCallback()I
    .locals 2

    .line 40
    sget-object v0, Lo/deleteReports;->extraCallback:Lo/deleteReports;

    if-eq p0, v0, :cond_0

    .line 44
    iget v0, p0, Lo/deleteReports;->onPostMessage:I

    return v0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
