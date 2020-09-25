.class final Lo/startWakefulService$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/startWakefulService;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/setDropDownViewTheme;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/dreamplug/androidapp/databinding/LayoutBankListItemBinding;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/startWakefulService;

.field private synthetic onNavigationEvent:Landroid/content/Context;


# direct methods
.method constructor <init>(Lo/startWakefulService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lo/startWakefulService$ICustomTabsCallback;->extraCallback:Lo/startWakefulService;

    iput-object p2, p0, Lo/startWakefulService$ICustomTabsCallback;->onNavigationEvent:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    .line 1032
    iget-object v1, v0, Lo/startWakefulService$ICustomTabsCallback;->onNavigationEvent:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1033
    iget-object v2, v0, Lo/startWakefulService$ICustomTabsCallback;->extraCallback:Lo/startWakefulService;

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f0e01be

    const/4 v4, 0x0

    .line 1109
    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0075

    .line 1122
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_e

    const v2, 0x7f0b0077

    .line 1127
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_d

    const v2, 0x7f0b016f

    .line 1132
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_c

    const v2, 0x7f0b0170

    .line 1137
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lo/flagRemovedAndOffsetPosition;

    if-eqz v8, :cond_b

    const v2, 0x7f0b0171

    .line 1142
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lo/findFirstVisibleItemClosestToStart;

    if-eqz v9, :cond_a

    const v2, 0x7f0b0177

    .line 1147
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_9

    const v2, 0x7f0b0178

    .line 1152
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lo/flagRemovedAndOffsetPosition;

    if-eqz v11, :cond_8

    const v2, 0x7f0b0179

    .line 1157
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lo/findFirstVisibleItemClosestToStart;

    if-eqz v12, :cond_7

    const v2, 0x7f0b017a

    .line 1162
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/FrameLayout;

    if-eqz v13, :cond_6

    const v2, 0x7f0b017b

    .line 1167
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lo/flagRemovedAndOffsetPosition;

    if-eqz v14, :cond_5

    const v2, 0x7f0b017c

    .line 1172
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lo/findFirstVisibleItemClosestToStart;

    if-eqz v15, :cond_4

    const v2, 0x7f0b0441

    .line 1177
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_3

    const v2, 0x7f0b0442

    .line 1182
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_2

    const v2, 0x7f0b0443

    .line 1187
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_1

    const v2, 0x7f0b058f

    .line 1192
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v19, :cond_0

    .line 1197
    new-instance v2, Lo/setDropDownViewTheme;

    move-object v3, v2

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v19}, Lo/setDropDownViewTheme;-><init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/FrameLayout;Lo/flagRemovedAndOffsetPosition;Lo/findFirstVisibleItemClosestToStart;Landroid/widget/FrameLayout;Lo/flagRemovedAndOffsetPosition;Lo/findFirstVisibleItemClosestToStart;Landroid/widget/FrameLayout;Lo/flagRemovedAndOffsetPosition;Lo/findFirstVisibleItemClosestToStart;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v2

    :cond_0
    const-string v1, "moreCardsCount"

    goto :goto_0

    :cond_1
    const-string v1, "iconBackgroundTwo"

    goto :goto_0

    :cond_2
    const-string v1, "iconBackgroundThree"

    goto :goto_0

    :cond_3
    const-string v1, "iconBackgroundOne"

    goto :goto_0

    :cond_4
    const-string v1, "cardTwoUtilization"

    goto :goto_0

    :cond_5
    const-string v1, "cardTwoIcon"

    goto :goto_0

    :cond_6
    const-string v1, "cardTwo"

    goto :goto_0

    :cond_7
    const-string v1, "cardThreeUtilization"

    goto :goto_0

    :cond_8
    const-string v1, "cardThreeIcon"

    goto :goto_0

    :cond_9
    const-string v1, "cardThree"

    goto :goto_0

    :cond_a
    const-string v1, "cardOneUtilization"

    goto :goto_0

    :cond_b
    const-string v1, "cardOneIcon"

    goto :goto_0

    :cond_c
    const-string v1, "cardOne"

    goto :goto_0

    :cond_d
    const-string v1, "allCountsBg"

    goto :goto_0

    :cond_e
    const-string v1, "allCardsCount"

    .line 1202
    :goto_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
