.class public final enum Lo/ActivityCompat$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ActivityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/ActivityCompat$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/ActivityCompat$onPostMessage;

.field private static final synthetic extraCallback:[Lo/ActivityCompat$onPostMessage;

.field public static final enum onNavigationEvent:Lo/ActivityCompat$onPostMessage;

.field public static final enum onPostMessage:Lo/ActivityCompat$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 27
    new-instance v0, Lo/ActivityCompat$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-direct {v0, v2, v1}, Lo/ActivityCompat$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ActivityCompat$onPostMessage;->ICustomTabsCallback:Lo/ActivityCompat$onPostMessage;

    .line 28
    new-instance v0, Lo/ActivityCompat$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "TRANSIENT_ERROR"

    invoke-direct {v0, v3, v2}, Lo/ActivityCompat$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ActivityCompat$onPostMessage;->onNavigationEvent:Lo/ActivityCompat$onPostMessage;

    .line 29
    new-instance v0, Lo/ActivityCompat$onPostMessage;

    const/4 v3, 0x2

    const-string v4, "FATAL_ERROR"

    invoke-direct {v0, v4, v3}, Lo/ActivityCompat$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ActivityCompat$onPostMessage;->onPostMessage:Lo/ActivityCompat$onPostMessage;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/ActivityCompat$onPostMessage;

    .line 26
    sget-object v5, Lo/ActivityCompat$onPostMessage;->ICustomTabsCallback:Lo/ActivityCompat$onPostMessage;

    aput-object v5, v4, v1

    sget-object v1, Lo/ActivityCompat$onPostMessage;->onNavigationEvent:Lo/ActivityCompat$onPostMessage;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/ActivityCompat$onPostMessage;->extraCallback:[Lo/ActivityCompat$onPostMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/ActivityCompat$onPostMessage;
    .locals 1

    .line 26
    const-class v0, Lo/ActivityCompat$onPostMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/ActivityCompat$onPostMessage;

    return-object p0
.end method

.method public static values()[Lo/ActivityCompat$onPostMessage;
    .locals 1

    .line 26
    sget-object v0, Lo/ActivityCompat$onPostMessage;->extraCallback:[Lo/ActivityCompat$onPostMessage;

    invoke-virtual {v0}, [Lo/ActivityCompat$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/ActivityCompat$onPostMessage;

    return-object v0
.end method
