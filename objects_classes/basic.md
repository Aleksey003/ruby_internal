struct RBasic {
  VALUE flags;
  VALUE klass;
};

#define ROBJECT_EMBED_LEN_MAX 3
struct RObject {
  struct RBasic basic;
  union {
    struct {
      long numiv;
      VALUE *ivptr;
      struct st_table *iv_index_tbl;
    } heap;
    VALUE ary[ROBJECT_EMBED_LEN_MAX];
  } as;
};

struct RClass {
  struct RBasic basic;
  rb_classext_t *ptr;
  struct st_table *m_tbl;
  struct st_table *iv_index_tbl;
};
