.class final Lo/ResetExtraJsonAdapter;
.super Lo/ScreenDataJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ScreenDataJsonAdapter;"
    }
.end annotation


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/PoweredByJsonAdapter;


# direct methods
.method private constructor <init>(Lo/PoweredByJsonAdapter;)V
    .locals 1

    iput-object p1, p0, Lo/ResetExtraJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/ScreenDataJsonAdapter;-><init>(Lo/PoweredByJsonAdapter;Lo/PossibleValuesJsonAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/PoweredByJsonAdapter;Lo/PossibleValuesJsonAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/ResetExtraJsonAdapter;-><init>(Lo/PoweredByJsonAdapter;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lo/PrefilledData;

    iget-object v1, p0, Lo/ResetExtraJsonAdapter;->ICustomTabsCallback:Lo/PoweredByJsonAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/PrefilledData;-><init>(Lo/PoweredByJsonAdapter;Lo/PossibleValuesJsonAdapter;)V

    return-object v0
.end method
