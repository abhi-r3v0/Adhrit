.class Lin/juspay/hypersdk/core/JBridge$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/JBridge;->startDatePicker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/JBridge;

.field final synthetic val$callback:Ljava/lang/String;

.field final synthetic val$maxDate:Ljava/lang/String;

.field final synthetic val$minDate:Ljava/lang/String;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/JBridge$13;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iput-object p2, p0, Lin/juspay/hypersdk/core/JBridge$13;->val$callback:Ljava/lang/String;

    iput-object p3, p0, Lin/juspay/hypersdk/core/JBridge$13;->val$minDate:Ljava/lang/String;

    iput-object p4, p0, Lin/juspay/hypersdk/core/JBridge$13;->val$maxDate:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lin/juspay/hypersdk/core/JBridge$13;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$13;->val$callback:Ljava/lang/String;

    invoke-static {v0, v1}, Lin/juspay/hypersdk/core/JBridge;->access$400(Lin/juspay/hypersdk/core/JBridge;Ljava/lang/String;)Landroid/app/DatePickerDialog;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$13;->val$minDate:Ljava/lang/String;

    const-string v2, "undefined"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$13;->val$minDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    iget-object v3, p0, Lin/juspay/hypersdk/core/JBridge$13;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iget-object v4, p0, Lin/juspay/hypersdk/core/JBridge$13;->val$minDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lin/juspay/hypersdk/core/JBridge;->dateToMillisecond(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/widget/DatePicker;->setMinDate(J)V

    :cond_1
    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$13;->val$maxDate:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lin/juspay/hypersdk/core/JBridge$13;->val$maxDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    iget-object v2, p0, Lin/juspay/hypersdk/core/JBridge$13;->this$0:Lin/juspay/hypersdk/core/JBridge;

    iget-object v3, p0, Lin/juspay/hypersdk/core/JBridge$13;->val$maxDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lin/juspay/hypersdk/core/JBridge;->dateToMillisecond(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    :cond_2
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "day"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
