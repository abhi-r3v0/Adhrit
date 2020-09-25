.class public final Lo/setSwitchTypeface;
.super Lo/setShuffleMode;
.source ""


# static fields
.field private static final ICustomTabsCallback:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 35
    sput-object v0, Lo/setSwitchTypeface;->ICustomTabsCallback:Landroid/util/SparseIntArray;

    const v2, 0x7f0e009c

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    sget-object v0, Lo/setSwitchTypeface;->ICustomTabsCallback:Landroid/util/SparseIntArray;

    const v2, 0x7f0e0200

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    sget-object v0, Lo/setSwitchTypeface;->ICustomTabsCallback:Landroid/util/SparseIntArray;

    const v2, 0x7f0e0201

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget-object v0, Lo/setSwitchTypeface;->ICustomTabsCallback:Landroid/util/SparseIntArray;

    const v2, 0x7f0e020d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lo/setShuffleMode;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/rateWithExtras;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 2

    .line 43
    sget-object v0, Lo/setSwitchTypeface;->ICustomTabsCallback:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    if-lez p3, :cond_9

    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq p3, v1, :cond_6

    const/4 v1, 0x2

    if-eq p3, v1, :cond_4

    const/4 v1, 0x3

    if-eq p3, v1, :cond_2

    const/4 v1, 0x4

    if-eq p3, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p3, "layout/layout_fetching_cards_0"

    .line 69
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 70
    new-instance p3, Lo/getAssets;

    invoke-direct {p3, p1, p2}, Lo/getAssets;-><init>(Lo/rateWithExtras;Landroid/view/View;)V

    return-object p3

    .line 72
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "The tag for layout_fetching_cards is invalid. Received: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p3, "layout/layout_cred_protect_single_card_view_0"

    .line 63
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 64
    new-instance p3, Lo/obtainStyledAttributes;

    invoke-direct {p3, p1, p2}, Lo/obtainStyledAttributes;-><init>(Lo/rateWithExtras;Landroid/view/View;)V

    return-object p3

    .line 66
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "The tag for layout_cred_protect_single_card_view is invalid. Received: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p3, "layout/layout_cred_protect_multi_card_view_0"

    .line 57
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 58
    new-instance p3, Lo/getDropDownViewInflater;

    invoke-direct {p3, p1, p2}, Lo/getDropDownViewInflater;-><init>(Lo/rateWithExtras;Landroid/view/View;)V

    return-object p3

    .line 60
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "The tag for layout_cred_protect_multi_card_view is invalid. Received: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-string p3, "layout/fragment_cred_protect_opt_in_0"

    .line 51
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 52
    new-instance p3, Lo/onCreateDrawableState;

    invoke-direct {p3, p1, p2}, Lo/onCreateDrawableState;-><init>(Lo/rateWithExtras;Landroid/view/View;)V

    return-object p3

    .line 54
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "The tag for fragment_cred_protect_opt_in is invalid. Received: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ICustomTabsCallback(Lo/rateWithExtras;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 1

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    .line 81
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    sget-object v0, Lo/setSwitchTypeface;->ICustomTabsCallback:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    if-lez p3, :cond_2

    const/4 p3, 0x0

    .line 86
    aget-object p2, p2, p3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 88
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final ICustomTabsCallback()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/setShuffleMode;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    new-instance v1, Lo/MediaControllerCompat$Callback;

    invoke-direct {v1}, Lo/MediaControllerCompat$Callback;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
