.class public enum Lo/aR;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/aR;",
        ">;"
    }
.end annotation


# static fields
.field private static final enum ICustomTabsCallback:Lo/aR;

.field private static final synthetic asBinder:[Lo/aR;

.field private static final enum extraCallback:Lo/aR;

.field private static final enum onMessageChannelReady:Lo/aR;

.field public static final enum onNavigationEvent:Lo/aR;

.field public static final enum onPostMessage:Lo/aR;


# instance fields
.field private asInterface:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 7
    new-instance v0, Lo/e;

    const/4 v1, 0x0

    const-string v2, "TERABYTES"

    const-wide v3, 0x10000000000L

    invoke-direct {v0, v2, v1, v3, v4}, Lo/e;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lo/aR;->extraCallback:Lo/aR;

    .line 8
    new-instance v0, Lo/aT;

    const/4 v2, 0x1

    const-string v3, "GIGABYTES"

    const-wide/32 v4, 0x40000000

    invoke-direct {v0, v3, v2, v4, v5}, Lo/aT;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lo/aR;->ICustomTabsCallback:Lo/aR;

    .line 9
    new-instance v0, Lo/aU;

    const/4 v3, 0x2

    const-string v4, "MEGABYTES"

    const-wide/32 v5, 0x100000

    invoke-direct {v0, v4, v3, v5, v6}, Lo/aU;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lo/aR;->onNavigationEvent:Lo/aR;

    .line 10
    new-instance v0, Lo/aW;

    const/4 v4, 0x3

    const-string v5, "KILOBYTES"

    const-wide/16 v6, 0x400

    invoke-direct {v0, v5, v4, v6, v7}, Lo/aW;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lo/aR;->onMessageChannelReady:Lo/aR;

    .line 11
    new-instance v0, Lo/f;

    const/4 v5, 0x4

    const-string v6, "BYTES"

    const-wide/16 v7, 0x1

    invoke-direct {v0, v6, v5, v7, v8}, Lo/f;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lo/aR;->onPostMessage:Lo/aR;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/aR;

    .line 12
    sget-object v7, Lo/aR;->extraCallback:Lo/aR;

    aput-object v7, v6, v1

    sget-object v1, Lo/aR;->ICustomTabsCallback:Lo/aR;

    aput-object v1, v6, v2

    sget-object v1, Lo/aR;->onNavigationEvent:Lo/aR;

    aput-object v1, v6, v3

    sget-object v1, Lo/aR;->onMessageChannelReady:Lo/aR;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/aR;->asBinder:[Lo/aR;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-wide p3, p0, Lo/aR;->asInterface:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IJLo/e;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lo/aR;-><init>(Ljava/lang/String;IJ)V

    return-void
.end method

.method public static values()[Lo/aR;
    .locals 1

    .line 1
    sget-object v0, Lo/aR;->asBinder:[Lo/aR;

    invoke-virtual {v0}, [Lo/aR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/aR;

    return-object v0
.end method


# virtual methods
.method public final onPostMessage(J)J
    .locals 2

    .line 5
    iget-wide v0, p0, Lo/aR;->asInterface:J

    mul-long p1, p1, v0

    sget-object v0, Lo/aR;->onMessageChannelReady:Lo/aR;

    iget-wide v0, v0, Lo/aR;->asInterface:J

    div-long/2addr p1, v0

    return-wide p1
.end method
