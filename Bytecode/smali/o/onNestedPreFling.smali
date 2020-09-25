.class public final Lo/onNestedPreFling;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasLogo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/hasLogo<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/onNestedPreFling;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lo/onNestedPreFling;

    invoke-direct {v0}, Lo/onNestedPreFling;-><init>()V

    sput-object v0, Lo/onNestedPreFling;->extraCallback:Lo/onNestedPreFling;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Lo/restoreToolbarHierarchyState;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1013
    invoke-static {p1}, Lo/onNestedFling;->onMessageChannelReady(Lo/restoreToolbarHierarchyState;)F

    move-result p1

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
