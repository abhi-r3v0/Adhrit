.class public final enum Lo/uploadReport;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/uploadReport;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum extraCallback:Lo/uploadReport;

.field public static final enum onMessageChannelReady:Lo/uploadReport;

.field private static final synthetic onNavigationEvent:[Lo/uploadReport;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    new-instance v0, Lo/uploadReport;

    const/4 v1, 0x0

    const-string v2, "PROTO2"

    invoke-direct {v0, v2, v1}, Lo/uploadReport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/uploadReport;->onMessageChannelReady:Lo/uploadReport;

    .line 37
    new-instance v0, Lo/uploadReport;

    const/4 v2, 0x1

    const-string v3, "PROTO3"

    invoke-direct {v0, v3, v2}, Lo/uploadReport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/uploadReport;->extraCallback:Lo/uploadReport;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/uploadReport;

    .line 34
    sget-object v4, Lo/uploadReport;->onMessageChannelReady:Lo/uploadReport;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/uploadReport;->onNavigationEvent:[Lo/uploadReport;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/uploadReport;
    .locals 1

    .line 34
    const-class v0, Lo/uploadReport;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/uploadReport;

    return-object p0
.end method

.method public static values()[Lo/uploadReport;
    .locals 1

    .line 34
    sget-object v0, Lo/uploadReport;->onNavigationEvent:[Lo/uploadReport;

    invoke-virtual {v0}, [Lo/uploadReport;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/uploadReport;

    return-object v0
.end method
