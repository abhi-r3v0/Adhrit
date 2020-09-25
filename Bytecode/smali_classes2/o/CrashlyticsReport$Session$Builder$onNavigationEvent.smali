.class public final enum Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReport$Session$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

.field public static final enum DOCUMENT:Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

.field public static final enum DOCUMENTTYPE_NOT_SET:Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

.field public static final enum NO_DOCUMENT:Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

.field public static final enum UNKNOWN_DOCUMENT:Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 25
    new-instance v0, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "NO_DOCUMENT"

    invoke-direct {v0, v3, v2, v1}, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;->NO_DOCUMENT:Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    .line 26
    new-instance v0, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    const/4 v3, 0x2

    const-string v4, "DOCUMENT"

    invoke-direct {v0, v4, v1, v3}, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;->DOCUMENT:Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    .line 27
    new-instance v0, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    const/4 v4, 0x3

    const-string v5, "UNKNOWN_DOCUMENT"

    invoke-direct {v0, v5, v3, v4}, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;->UNKNOWN_DOCUMENT:Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    .line 28
    new-instance v0, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    const-string v5, "DOCUMENTTYPE_NOT_SET"

    invoke-direct {v0, v5, v4, v2}, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;->DOCUMENTTYPE_NOT_SET:Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    .line 24
    sget-object v6, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;->NO_DOCUMENT:Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    aput-object v6, v5, v2

    sget-object v2, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;->DOCUMENT:Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    aput-object v2, v5, v1

    sget-object v1, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;->UNKNOWN_DOCUMENT:Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;->$VALUES:[Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;->value:I

    return-void
.end method

.method public static forNumber(I)Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_0
    sget-object p0, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;->UNKNOWN_DOCUMENT:Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    return-object p0

    .line 44
    :cond_1
    sget-object p0, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;->DOCUMENT:Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    return-object p0

    .line 43
    :cond_2
    sget-object p0, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;->NO_DOCUMENT:Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    return-object p0

    .line 46
    :cond_3
    sget-object p0, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;->DOCUMENTTYPE_NOT_SET:Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    return-object p0
.end method

.method public static valueOf(I)Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    invoke-static {p0}, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;->forNumber(I)Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;
    .locals 1

    .line 24
    const-class v0, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    return-object p0
.end method

.method public static values()[Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;
    .locals 1

    .line 24
    sget-object v0, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;->$VALUES:[Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    invoke-virtual {v0}, [Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 51
    iget v0, p0, Lo/CrashlyticsReport$Session$Builder$onNavigationEvent;->value:I

    return v0
.end method
