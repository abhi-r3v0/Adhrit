.class public final enum Lo/sendReport$ICustomTabsCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sendReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/sendReport$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ICustomTabsCallback:[Lo/sendReport$ICustomTabsCallback;

.field public static final enum onNavigationEvent:Lo/sendReport$ICustomTabsCallback;

.field public static final enum onPostMessage:Lo/sendReport$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 44
    new-instance v0, Lo/sendReport$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, "ASCENDING"

    invoke-direct {v0, v2, v1}, Lo/sendReport$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/sendReport$ICustomTabsCallback;->onNavigationEvent:Lo/sendReport$ICustomTabsCallback;

    .line 47
    new-instance v0, Lo/sendReport$ICustomTabsCallback;

    const/4 v2, 0x1

    const-string v3, "DESCENDING"

    invoke-direct {v0, v3, v2}, Lo/sendReport$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/sendReport$ICustomTabsCallback;->onPostMessage:Lo/sendReport$ICustomTabsCallback;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/sendReport$ICustomTabsCallback;

    .line 42
    sget-object v4, Lo/sendReport$ICustomTabsCallback;->onNavigationEvent:Lo/sendReport$ICustomTabsCallback;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/sendReport$ICustomTabsCallback;->ICustomTabsCallback:[Lo/sendReport$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/sendReport$ICustomTabsCallback;
    .locals 1

    .line 42
    const-class v0, Lo/sendReport$ICustomTabsCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/sendReport$ICustomTabsCallback;

    return-object p0
.end method

.method public static values()[Lo/sendReport$ICustomTabsCallback;
    .locals 1

    .line 42
    sget-object v0, Lo/sendReport$ICustomTabsCallback;->ICustomTabsCallback:[Lo/sendReport$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/sendReport$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/sendReport$ICustomTabsCallback;

    return-object v0
.end method
