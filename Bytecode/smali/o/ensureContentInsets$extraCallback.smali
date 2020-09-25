.class public final Lo/ensureContentInsets$extraCallback;
.super Lo/ensureContentInsets;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ensureContentInsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001BQ\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u0012\u0010\u0008\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u0012\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u000cJ;\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u00032\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0002\u0010\u0015J\u000e\u0010\u0016\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0018J\u0016\u0010\u0019\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0014R\u0016\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/ViewModelAction$AskPermissions;",
        "Lcom/dreamplug/androidapp/ui/ViewModelAction;",
        "permissions",
        "",
        "",
        "requestCode",
        "",
        "onPermissionGranted",
        "Lkotlin/Function0;",
        "",
        "onPermissionDenied",
        "onPermissionNeverAskAgain",
        "([Ljava/lang/String;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "[Ljava/lang/String;",
        "onRequestPermissionsResult",
        "activity",
        "Landroid/app/Activity;",
        "grantResults",
        "",
        "permissionInfoDialog",
        "Lcom/dreamplug/androidapp/ui/widget/PermissionInfoDialog;",
        "(Landroid/app/Activity;I[Ljava/lang/String;[ILcom/dreamplug/androidapp/ui/widget/PermissionInfoDialog;)V",
        "request",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "showPermissionDialog",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:I

.field final extraCallback:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:[Ljava/lang/String;

.field private final onNavigationEvent:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field final onPostMessage:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;Lo/getServerTime;Lo/getServerTime;Lo/getServerTime;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, v0}, Lo/ensureContentInsets;-><init>(B)V

    iput-object p1, p0, Lo/ensureContentInsets$extraCallback;->onMessageChannelReady:[Ljava/lang/String;

    const/16 p1, 0x2711

    iput p1, p0, Lo/ensureContentInsets$extraCallback;->ICustomTabsCallback:I

    iput-object p2, p0, Lo/ensureContentInsets$extraCallback;->extraCallback:Lo/getServerTime;

    iput-object p3, p0, Lo/ensureContentInsets$extraCallback;->onNavigationEvent:Lo/getServerTime;

    iput-object p4, p0, Lo/ensureContentInsets$extraCallback;->onPostMessage:Lo/getServerTime;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/app/Activity;I[Ljava/lang/String;[ILo/setCardBackgroundColor;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-string v5, "activity"

    invoke-static {v1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "permissions"

    invoke-static {v2, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "grantResults"

    invoke-static {v3, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "permissionInfoDialog"

    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x2711

    move/from16 v6, p2

    if-ne v6, v5, :cond_f

    .line 170
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 171
    array-length v6, v3

    const/4 v8, 0x0

    :goto_0
    const/4 v9, -0x1

    if-ge v8, v6, :cond_2

    aget v11, v3, v8

    if-ne v11, v9, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_1

    .line 125
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 172
    :cond_2
    check-cast v5, Ljava/util/List;

    .line 174
    array-length v6, v2

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_2
    const-string v12, "android.permission.READ_PHONE_STATE"

    if-ge v8, v6, :cond_a

    aget-object v13, v2, v8

    add-int/lit8 v14, v11, 0x1

    .line 129
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v15

    const v9, -0x70918bc1

    const-string v7, "pairs"

    const-string v10, "permission"

    if-eq v15, v9, :cond_8

    const v9, -0x3562e583    # -5147966.5f

    if-eq v15, v9, :cond_6

    const v9, -0x550ba9

    if-eq v15, v9, :cond_4

    :cond_3
    :goto_3
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 133
    :cond_4
    invoke-virtual {v13, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    new-array v12, v9, [Lo/addWrite;

    .line 134
    aget v11, v3, v11

    if-nez v11, :cond_5

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 2043
    new-instance v13, Lo/addWrite;

    invoke-direct {v13, v10, v11}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v10, 0x0

    aput-object v13, v12, v10

    .line 134
    invoke-static {v12, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-static {v9}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v7, Ljava/util/Map;

    invoke-static {v7, v12}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v9, "phone_permission"

    .line 134
    invoke-static {v9, v7}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto :goto_3

    :cond_6
    const-string v9, "android.permission.RECEIVE_SMS"

    .line 130
    invoke-virtual {v13, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    new-array v12, v9, [Lo/addWrite;

    .line 131
    aget v11, v3, v11

    if-nez v11, :cond_7

    const/4 v11, 0x1

    goto :goto_5

    :cond_7
    const/4 v11, 0x0

    :goto_5
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 1043
    new-instance v13, Lo/addWrite;

    invoke-direct {v13, v10, v11}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v10, 0x0

    aput-object v13, v12, v10

    .line 131
    invoke-static {v12, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1088
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-static {v9}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v7, Ljava/util/Map;

    invoke-static {v7, v12}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v9, "sms_permission"

    .line 131
    invoke-static {v9, v7}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto :goto_3

    :cond_8
    const-string v9, "android.permission.ACCESS_FINE_LOCATION"

    .line 136
    invoke-virtual {v13, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    new-array v12, v9, [Lo/addWrite;

    .line 137
    aget v11, v3, v11

    if-nez v11, :cond_9

    const/16 v16, 0x1

    goto :goto_6

    :cond_9
    const/16 v16, 0x0

    :goto_6
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 3043
    new-instance v13, Lo/addWrite;

    invoke-direct {v13, v10, v11}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v10, 0x0

    aput-object v13, v12, v10

    .line 137
    invoke-static {v12, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3088
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-static {v9}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v11

    invoke-direct {v7, v11}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v7, Ljava/util/Map;

    invoke-static {v7, v12}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v9, "location_permission"

    .line 137
    invoke-static {v9, v7}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    :goto_7
    add-int/lit8 v8, v8, 0x1

    move v11, v14

    const/4 v9, -0x1

    goto/16 :goto_2

    :cond_a
    const/4 v10, 0x0

    .line 141
    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_e

    .line 142
    invoke-virtual/range {p5 .. p5}, Lo/setCardBackgroundColor;->onNavigationEvent()V

    .line 144
    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    invoke-static {v2, v12}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_c

    .line 146
    invoke-static {v1, v12}, Lo/getTitle;->onNavigationEvent(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 4027
    iput-boolean v3, v4, Lo/setCardBackgroundColor;->onMessageChannelReady:Z

    .line 149
    iget-object v1, v0, Lo/ensureContentInsets$extraCallback;->onPostMessage:Lo/getServerTime;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    .line 153
    :cond_b
    invoke-virtual/range {p5 .. p5}, Lo/setCardBackgroundColor;->extraCallback()V

    const/4 v7, 0x1

    goto :goto_8

    :cond_c
    const/4 v7, 0x0

    :goto_8
    if-nez v7, :cond_f

    .line 156
    invoke-virtual/range {p5 .. p5}, Landroid/app/Dialog;->dismiss()V

    .line 157
    iget-object v1, v0, Lo/ensureContentInsets$extraCallback;->onNavigationEvent:Lo/getServerTime;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :cond_d
    return-void

    .line 162
    :cond_e
    invoke-virtual/range {p5 .. p5}, Landroid/app/Dialog;->dismiss()V

    .line 163
    iget-object v1, v0, Lo/ensureContentInsets$extraCallback;->extraCallback:Lo/getServerTime;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method public final onPostMessage(Landroid/app/Activity;Lo/setCardBackgroundColor;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionInfoDialog"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lo/ensureContentInsets$extraCallback$onMessageChannelReady;

    invoke-direct {v0, p0, p2, p1}, Lo/ensureContentInsets$extraCallback$onMessageChannelReady;-><init>(Lo/ensureContentInsets$extraCallback;Lo/setCardBackgroundColor;Landroid/app/Activity;)V

    .line 118
    check-cast v0, Lo/setCardBackgroundColor$extraCallback;

    .line 1026
    iput-object v0, p2, Lo/setCardBackgroundColor;->onPostMessage:Lo/setCardBackgroundColor$extraCallback;

    .line 119
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    return-void
.end method
