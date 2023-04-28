package egovframework.com.cmm;

import javax.servlet.ServletContext;

import org.springframework.web.context.ServletContextAware;

import egovframework.rte.ptl.mvc.tags.ui.pagination.AbstractPaginationRenderer;
/**
 * ImagePaginationRenderer.java 클래스
 *
 * @author 서준식
 * @since 2011. 9. 16.
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *
 *   수정일      수정자           수정내용
 *  -------    -------------    ----------------------
 *   2011. 9. 16.   서준식       이미지 경로에 ContextPath추가
 * </pre>
 */
public class ImagePaginationRenderer extends AbstractPaginationRenderer implements ServletContextAware{

	private ServletContext servletContext;

	public ImagePaginationRenderer() {

	}

	public void initVariables(){
		firstPageLabel    = "<a href=\"#\" class=\"pnArr pn leftEnd\" onclick=\"{0}({1});return false; \"><img src=\"" + servletContext.getContextPath() +  "/images/sub/btn_page_first.png\" alt=\"처음\"/></a>";
        previousPageLabel = "<a href=\"#\" class=\"pnArr pn left\" onclick=\"{0}({1});return false; \"><img src=\"" + servletContext.getContextPath() +  "/images/sub/btn_page_prev.png\"    alt=\"이전\"/></a>";
        currentPageLabel  = "<a href=\"#\" class=\"on first last\">{0}</a>";
        otherPageLabel    = "<a href=\"#\" class=\"first last\" onclick=\"{0}({1});return false; \">{2}</a>";
        nextPageLabel     = "<a href=\"#\" class=\"pnArr pn right\" onclick=\"{0}({1});return false; \"><img src=\"" + servletContext.getContextPath() +  "/images/sub/btn_page_next.png\"    alt=\"다음\"/></a>";
        lastPageLabel     = "<a href=\"#\" class=\"pnArr pn rightEnd\" onclick=\"{0}({1});return false; \"><img src=\"" + servletContext.getContextPath() +  "/images/sub/btn_page_last.png\" alt=\"마지막\" /></a>";
	}

	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		initVariables();
	}

}
