.class public final Lo/onNestedScroll;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasLogo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/hasLogo<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/onNestedScroll;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lo/onNestedScroll;

    invoke-direct {v0}, Lo/onNestedScroll;-><init>()V

    sput-object v0, Lo/onNestedScroll;->ICustomTabsCallback:Lo/onNestedScroll;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
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

    .line 1014
    invoke-static {p1}, Lo/onNestedFling;->onMessageChannelReady(Lo/restoreToolbarHierarchyState;)F

    move-result p1

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
