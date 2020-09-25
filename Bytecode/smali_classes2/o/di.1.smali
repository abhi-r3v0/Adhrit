.class final synthetic Lo/di;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final onNavigationEvent:Lo/dl;


# direct methods
.method constructor <init>(Lo/dl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/di;->onNavigationEvent:Lo/dl;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/di;->onNavigationEvent:Lo/dl;

    invoke-virtual {v0, p1, p2}, Lo/dl;->ICustomTabsCallback(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
