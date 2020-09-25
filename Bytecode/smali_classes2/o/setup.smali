.class final synthetic Lo/setup;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;


# direct methods
.method constructor <init>(Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setup;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/setup;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->newSession()V

    return-void
.end method
