.class final Lo/getMenuListView$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMenuListView;->extraCallback(Lo/inflate$extraCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "onDismiss"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/getMenuListView$onRelationshipValidationResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getMenuListView$onRelationshipValidationResult;

    invoke-direct {v0}, Lo/getMenuListView$onRelationshipValidationResult;-><init>()V

    sput-object v0, Lo/getMenuListView$onRelationshipValidationResult;->onMessageChannelReady:Lo/getMenuListView$onRelationshipValidationResult;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "rent_surcharge_info_page_dismiss"

    .line 176
    invoke-static {p1}, Lo/setWindowLayoutType;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method
