.class final Lo/requestSimpleAnimationsInNextLayout$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/requestSimpleAnimationsInNextLayout;
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
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/getSelectionModeForAccessibility;


# direct methods
.method constructor <init>(Lo/getSelectionModeForAccessibility;)V
    .locals 0

    iput-object p1, p0, Lo/requestSimpleAnimationsInNextLayout$extraCallback;->onPostMessage:Lo/getSelectionModeForAccessibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 129
    iget-object p1, p0, Lo/requestSimpleAnimationsInNextLayout$extraCallback;->onPostMessage:Lo/getSelectionModeForAccessibility;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->consentCheckbox:I

    invoke-virtual {p1, v0}, Lo/getSelectionModeForAccessibility;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->toggle()V

    return-void
.end method
