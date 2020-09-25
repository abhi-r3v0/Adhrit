.class public final enum Lo/deleteLogFile$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/deleteLogFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/deleteLogFile$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/deleteLogFile$extraCallback;

.field public static final enum DEBUG:Lo/deleteLogFile$extraCallback;

.field public static final enum ERROR:Lo/deleteLogFile$extraCallback;

.field public static final enum INFO:Lo/deleteLogFile$extraCallback;

.field public static final enum NONE:Lo/deleteLogFile$extraCallback;

.field public static final enum WARN:Lo/deleteLogFile$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 25
    new-instance v0, Lo/deleteLogFile$extraCallback;

    const/4 v1, 0x0

    const-string v2, "DEBUG"

    invoke-direct {v0, v2, v1}, Lo/deleteLogFile$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/deleteLogFile$extraCallback;->DEBUG:Lo/deleteLogFile$extraCallback;

    .line 26
    new-instance v0, Lo/deleteLogFile$extraCallback;

    const/4 v2, 0x1

    const-string v3, "INFO"

    invoke-direct {v0, v3, v2}, Lo/deleteLogFile$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/deleteLogFile$extraCallback;->INFO:Lo/deleteLogFile$extraCallback;

    .line 27
    new-instance v0, Lo/deleteLogFile$extraCallback;

    const/4 v3, 0x2

    const-string v4, "WARN"

    invoke-direct {v0, v4, v3}, Lo/deleteLogFile$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/deleteLogFile$extraCallback;->WARN:Lo/deleteLogFile$extraCallback;

    .line 28
    new-instance v0, Lo/deleteLogFile$extraCallback;

    const/4 v4, 0x3

    const-string v5, "ERROR"

    invoke-direct {v0, v5, v4}, Lo/deleteLogFile$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/deleteLogFile$extraCallback;->ERROR:Lo/deleteLogFile$extraCallback;

    .line 29
    new-instance v0, Lo/deleteLogFile$extraCallback;

    const/4 v5, 0x4

    const-string v6, "NONE"

    invoke-direct {v0, v6, v5}, Lo/deleteLogFile$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/deleteLogFile$extraCallback;->NONE:Lo/deleteLogFile$extraCallback;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/deleteLogFile$extraCallback;

    .line 24
    sget-object v7, Lo/deleteLogFile$extraCallback;->DEBUG:Lo/deleteLogFile$extraCallback;

    aput-object v7, v6, v1

    sget-object v1, Lo/deleteLogFile$extraCallback;->INFO:Lo/deleteLogFile$extraCallback;

    aput-object v1, v6, v2

    sget-object v1, Lo/deleteLogFile$extraCallback;->WARN:Lo/deleteLogFile$extraCallback;

    aput-object v1, v6, v3

    sget-object v1, Lo/deleteLogFile$extraCallback;->ERROR:Lo/deleteLogFile$extraCallback;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/deleteLogFile$extraCallback;->$VALUES:[Lo/deleteLogFile$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/deleteLogFile$extraCallback;
    .locals 1

    .line 24
    const-class v0, Lo/deleteLogFile$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/deleteLogFile$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/deleteLogFile$extraCallback;
    .locals 1

    .line 24
    sget-object v0, Lo/deleteLogFile$extraCallback;->$VALUES:[Lo/deleteLogFile$extraCallback;

    invoke-virtual {v0}, [Lo/deleteLogFile$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/deleteLogFile$extraCallback;

    return-object v0
.end method
