.class public final Lo/postAddActionBarHideOffset;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasLogo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/hasLogo<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/postAddActionBarHideOffset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lo/postAddActionBarHideOffset;

    invoke-direct {v0}, Lo/postAddActionBarHideOffset;-><init>()V

    sput-object v0, Lo/postAddActionBarHideOffset;->onMessageChannelReady:Lo/postAddActionBarHideOffset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
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

    .line 1015
    invoke-static {p1, p2}, Lo/onNestedFling;->onNavigationEvent(Lo/restoreToolbarHierarchyState;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
