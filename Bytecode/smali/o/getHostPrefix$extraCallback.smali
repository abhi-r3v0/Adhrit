.class public final enum Lo/getHostPrefix$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getHostPrefix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getHostPrefix$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum extraCallback:Lo/getHostPrefix$extraCallback;

.field public static final enum onNavigationEvent:Lo/getHostPrefix$extraCallback;

.field private static final synthetic onPostMessage:[Lo/getHostPrefix$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 310
    new-instance v0, Lo/getHostPrefix$extraCallback;

    const/4 v1, 0x0

    const-string v2, "SMALL"

    invoke-direct {v0, v2, v1}, Lo/getHostPrefix$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getHostPrefix$extraCallback;->onNavigationEvent:Lo/getHostPrefix$extraCallback;

    .line 313
    new-instance v0, Lo/getHostPrefix$extraCallback;

    const/4 v2, 0x1

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v2}, Lo/getHostPrefix$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/getHostPrefix$extraCallback;->extraCallback:Lo/getHostPrefix$extraCallback;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/getHostPrefix$extraCallback;

    .line 307
    sget-object v4, Lo/getHostPrefix$extraCallback;->onNavigationEvent:Lo/getHostPrefix$extraCallback;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/getHostPrefix$extraCallback;->onPostMessage:[Lo/getHostPrefix$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 307
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getHostPrefix$extraCallback;
    .locals 1

    .line 307
    const-class v0, Lo/getHostPrefix$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getHostPrefix$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/getHostPrefix$extraCallback;
    .locals 1

    .line 307
    sget-object v0, Lo/getHostPrefix$extraCallback;->onPostMessage:[Lo/getHostPrefix$extraCallback;

    invoke-virtual {v0}, [Lo/getHostPrefix$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getHostPrefix$extraCallback;

    return-object v0
.end method
