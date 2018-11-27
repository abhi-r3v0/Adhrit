.class public final Landroid/support/v4/widget/SearchViewCompat;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;,
        Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;,
        Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;,
        Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkIfLegalArg(Landroid/view/View;)V
    .locals 1

    if-nez p0, :cond_0

    .line 36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "searchView must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_0
    instance-of p0, p0, Landroid/widget/SearchView;

    if-nez p0, :cond_1

    .line 39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "searchView must be an instance of android.widget.SearchView"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public static getQuery(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    invoke-static {p0}, Landroid/support/v4/widget/SearchViewCompat;->checkIfLegalArg(Landroid/view/View;)V

    .line 256
    check-cast p0, Landroid/widget/SearchView;

    invoke-virtual {p0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static isIconified(Landroid/view/View;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 321
    invoke-static {p0}, Landroid/support/v4/widget/SearchViewCompat;->checkIfLegalArg(Landroid/view/View;)V

    .line 322
    check-cast p0, Landroid/widget/SearchView;

    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result p0

    return p0
.end method

.method public static isQueryRefinementEnabled(Landroid/view/View;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 388
    invoke-static {p0}, Landroid/support/v4/widget/SearchViewCompat;->checkIfLegalArg(Landroid/view/View;)V

    .line 389
    check-cast p0, Landroid/widget/SearchView;

    invoke-virtual {p0}, Landroid/widget/SearchView;->isQueryRefinementEnabled()Z

    move-result p0

    return p0
.end method

.method public static isSubmitButtonEnabled(Landroid/view/View;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 352
    invoke-static {p0}, Landroid/support/v4/widget/SearchViewCompat;->checkIfLegalArg(Landroid/view/View;)V

    .line 353
    check-cast p0, Landroid/widget/SearchView;

    invoke-virtual {p0}, Landroid/widget/SearchView;->isSubmitButtonEnabled()Z

    move-result p0

    return p0
.end method

.method private static newOnCloseListener(Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;)Landroid/widget/SearchView$OnCloseListener;
    .locals 1

    .line 209
    new-instance v0, Landroid/support/v4/widget/SearchViewCompat$2;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SearchViewCompat$2;-><init>(Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;)V

    return-object v0
.end method

.method private static newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;)Landroid/widget/SearchView$OnQueryTextListener;
    .locals 1

    .line 135
    new-instance v0, Landroid/support/v4/widget/SearchViewCompat$1;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SearchViewCompat$1;-><init>(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;)V

    return-object v0
.end method

.method public static newSearchView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    new-instance v0, Landroid/widget/SearchView;

    invoke-direct {v0, p0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static setIconified(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    invoke-static {p0}, Landroid/support/v4/widget/SearchViewCompat;->checkIfLegalArg(Landroid/view/View;)V

    .line 307
    check-cast p0, Landroid/widget/SearchView;

    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setIconified(Z)V

    return-void
.end method

.method public static setImeOptions(Landroid/view/View;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    invoke-static {p0}, Landroid/support/v4/widget/SearchViewCompat;->checkIfLegalArg(Landroid/view/View;)V

    .line 97
    check-cast p0, Landroid/widget/SearchView;

    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setImeOptions(I)V

    return-void
.end method

.method public static setInputType(Landroid/view/View;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    invoke-static {p0}, Landroid/support/v4/widget/SearchViewCompat;->checkIfLegalArg(Landroid/view/View;)V

    .line 114
    check-cast p0, Landroid/widget/SearchView;

    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setInputType(I)V

    return-void
.end method

.method public static setMaxWidth(Landroid/view/View;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 400
    invoke-static {p0}, Landroid/support/v4/widget/SearchViewCompat;->checkIfLegalArg(Landroid/view/View;)V

    .line 401
    check-cast p0, Landroid/widget/SearchView;

    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setMaxWidth(I)V

    return-void
.end method

.method public static setOnCloseListener(Landroid/view/View;Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    invoke-static {p0}, Landroid/support/v4/widget/SearchViewCompat;->checkIfLegalArg(Landroid/view/View;)V

    .line 205
    check-cast p0, Landroid/widget/SearchView;

    invoke-static {p1}, Landroid/support/v4/widget/SearchViewCompat;->newOnCloseListener(Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;)Landroid/widget/SearchView$OnCloseListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    return-void
.end method

.method public static setOnQueryTextListener(Landroid/view/View;Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    invoke-static {p0}, Landroid/support/v4/widget/SearchViewCompat;->checkIfLegalArg(Landroid/view/View;)V

    .line 130
    check-cast p0, Landroid/widget/SearchView;

    invoke-static {p1}, Landroid/support/v4/widget/SearchViewCompat;->newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;)Landroid/widget/SearchView$OnQueryTextListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method public static setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 272
    invoke-static {p0}, Landroid/support/v4/widget/SearchViewCompat;->checkIfLegalArg(Landroid/view/View;)V

    .line 273
    check-cast p0, Landroid/widget/SearchView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public static setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 287
    invoke-static {p0}, Landroid/support/v4/widget/SearchViewCompat;->checkIfLegalArg(Landroid/view/View;)V

    .line 288
    check-cast p0, Landroid/widget/SearchView;

    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setQueryRefinementEnabled(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 375
    invoke-static {p0}, Landroid/support/v4/widget/SearchViewCompat;->checkIfLegalArg(Landroid/view/View;)V

    .line 376
    check-cast p0, Landroid/widget/SearchView;

    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setQueryRefinementEnabled(Z)V

    return-void
.end method

.method public static setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    invoke-static {p0}, Landroid/support/v4/widget/SearchViewCompat;->checkIfLegalArg(Landroid/view/View;)V

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 79
    check-cast p0, Landroid/widget/SearchView;

    .line 80
    invoke-virtual {v0, p1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    return-void
.end method

.method public static setSubmitButtonEnabled(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 338
    invoke-static {p0}, Landroid/support/v4/widget/SearchViewCompat;->checkIfLegalArg(Landroid/view/View;)V

    .line 339
    check-cast p0, Landroid/widget/SearchView;

    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    return-void
.end method
